#include <iostream>
#include <NTL/ZZ.h>
#include <gmp.h>
#include <gmpxx.h>
#include "../bernmm-1.1/bern_modp_util.h"
#include "../bernmm-1.1/bern_modp.h"
#include "../bernmm-1.1/bern_rat.h"
#include "berrb.h"

Berrb::Berrb()
{

}


Berrb::~Berrb()
{

}

std::string Berrb::ber(long k, long thread)
{
	mpq_t r;
	mpq_init(r);
	bernmm::bern_rat(r, k, thread);

    mpq_class q(r);

	mpq_clear(r);

    return q.get_str();
}

long Berrb::ber_modp(long p, long k)
{
    long r = bernmm::bern_modp(p, k);

    return r;
}




