%let pgm=utl-fun-diversion-overcomming-precision-issues-when-working-aritmetic-operations;

Fun diversion overcomming precision issues when working aritmetic-operations

Why doesn't my checkbook balance?
The SUM ($124.39, -$62.23, -$62.16 ) SHOULD=0

This has a lot of applications in accounting, note the macro language can do aritmetic with 64bit integers, bigint.
You may be able to use the macro language to handle 64bit floafs overflow?

github
https://tinyurl.com/yt5wfy4j
https://github.com/rogerjdeangelis/utl-fun-diversion-overcomming-precision-issues-when-working-aritmetic-operations

/**************************************************************************************************************************/
/*                                        |                                                                               */
/*         INPUT (PROBLEM)                |   SOLUTION                                                                    */
/*                                        |   Convert to pennies and divide at the end divide by 100                      */
/*                                        |                                                                               */
/* SUM (124.39, -62.23, -62.16 ) SHOULD=0 |   Rounding forces an exact representation                                     */
/* SHOULD BE ZERO                         |   of integers.                                                                */
/*                                        |                                                                               */
/* SUM  =  7.105427E-15                   |   data tst;                                                                   */
/*                                        |     sum=sum(                                                                  */
/*  data _null_                           |        round(100*124.39,1),                                                   */
/*    sum = sum(124.39, -62.23, -62.16);  |        round(100*-62.23,1),                                                   */
/*    put sum = hex16. ;                  |        round(100*-62.16,1))/100;                                              */
/*  run;quit;                             |     put sum 32.18;                                                            */
/*                                        |     put sum hex16.;                                                           */
/*                                        |   run;quit;                                                                   */
/*                                        |                                                                               */
/*   SUM  = 7.105427E-15                  |  SUM    = 0.000000000000000000  DECIMAL                                       */
/*   SUM  = 3D00000000000000 HEX          |  SUM    =   0000000000000000    HEX16 exact float 0                           */
/*                                        |                                                                               */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
