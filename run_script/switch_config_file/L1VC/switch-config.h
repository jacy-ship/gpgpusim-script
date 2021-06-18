#include <stdio.h>
#include <stdlib.h>

/*L1 cache */
#define USE_L1_BYPASS 0
#define L1_BYPASS_DIV 2
#define STATISTIC_BYPASS_L1CACHE 1
#define STATISTIC_BYPASS_L2CACHE 0

/*L1VC cache */
#define USE_L1VC  1   //VC開關
#define L1VC_DIV_LOWER 0
#define L1VC_DIV_UPPER 3

/*L2 cache */
#define USE_L2_BYPASS 0
#define L2_BYPASS_LOWER 0
#define L2_BYPASS_UPPER 3


/*L2 priority queue */
#define USE_ICNTTOL2_FS_QUEUE  0  //已經確定只會有限制div的資料會進去
#define USE_L2TOICNT_FS_QUEUE  0  //已經確定只會有限制div的資料會進去(1,33 IPC=157.3112)
#define USE_L2TODRAM_FS_QUEUE  0  //NOTE:change with l2cache.h 237.238.239 line. 已經確定只會有限制div的資料會進去
#define USE_DRAMTOL2_FS_QUEUE  0    //沒什麼效果，queue裡面每次都只有一二個資料而已
#define FAST_SPECIAL_REQUEST  33
#define FAST_SPECIAL_REQUEST2  33

/*L2VC cache */
#define USE_L2VC  0   //L2VC開關
#define L2VC_DIV_LOWER 0
#define L2VC_DIV_UPPER 2