#include <new>
#include <ruby.h>
#include "berrb.h"

static Berrb* getBerrb(VALUE self)
{
   Berrb* p;
   Data_Get_Struct(self, Berrb, p);
   return p;
}

static void wrap_Berrb_free(Berrb* p)
{
   p->~Berrb();
   ruby_xfree(p);
}

static VALUE wrap_Berrb_alloc(VALUE klass)
{
  void* p = ruby_xmalloc(sizeof(Berrb));
  new (p) Berrb();
  return Data_Wrap_Struct(klass, NULL, wrap_Berrb_free, p); 
}


static VALUE wrap_Berrb_init(VALUE self)
{
  Berrb* p = getBerrb(self);
  new (p) Berrb();

  return Qnil;
}


static VALUE wrap_Berrb_ber(VALUE self, VALUE k_value, VALUE thread_value)
{
  long k = FIX2LONG(k_value);
  long thread = FIX2LONG(thread_value);
  std::string retval = getBerrb(self)->ber(k, thread);

  return rb_str_new_cstr(retval.c_str());
}


static VALUE wrap_Berrb_ber_modp(VALUE self, VALUE p_value, VALUE k_value)
{
  long k = FIX2LONG(k_value);
  long p = FIX2LONG(p_value);
  long retval = getBerrb(self)->ber_modp(p, k);

  return LONG2FIX(retval);
}


extern "C" void Init_berrb()
{
  VALUE c = rb_define_class("Berrb", rb_cObject);

  rb_define_alloc_func(c, wrap_Berrb_alloc);
  rb_define_private_method(c, "initialize", RUBY_METHOD_FUNC(wrap_Berrb_init), 0); 
  rb_define_method(c, "ber", RUBY_METHOD_FUNC(wrap_Berrb_ber), 2); 
  rb_define_method(c, "ber_modp", RUBY_METHOD_FUNC(wrap_Berrb_ber_modp), 2); 
}

