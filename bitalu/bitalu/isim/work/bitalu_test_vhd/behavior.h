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

#ifndef H_Work_bitalu_test_vhd_behavior_H
#define H_Work_bitalu_test_vhd_behavior_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_bitalu_test_vhd_behavior: public HSim__s6 {
public:


  char *t0;
  char *t1;
  char *t2;
    HSim__s1 SA[5];
    Work_bitalu_test_vhd_behavior(const char * name);
    ~Work_bitalu_test_vhd_behavior();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_bitalu_test_vhd_behavior(const char *name);

#endif
