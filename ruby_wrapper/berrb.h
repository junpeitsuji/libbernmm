#ifndef __BERRB_H_
#define __BERRB_H_

#include <string>

class Berrb
{
   public: 
   Berrb();
   virtual ~Berrb() ;

   std::string ber(long k, long thread);
   long ber_modp(long p, long k);
};

#endif


