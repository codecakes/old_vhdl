////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Work_dec_3x8_behaviour_H
#define H_Work_dec_3x8_behaviour_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_dec_3x8_behaviour: public HSim__s6 {
public:

    HSim__s1 SE[4];

    HSim__s1 SA[1];
HSimConstraints *c0;
  char *t1;
HSimConstraints *c2;
  char *t3;
    Work_dec_3x8_behaviour(const char * name);
    ~Work_dec_3x8_behaviour();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_dec_3x8_behaviour(const char *name);

#endif
