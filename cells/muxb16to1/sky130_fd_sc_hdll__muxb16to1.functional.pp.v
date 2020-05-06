/*
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
*/


`ifndef SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_PP_V
`define SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_PP_V

/**
 * muxb16to1: Buffered 16-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`default_nettype none

// Import user defined primitives.
`include "../../models/udp_pwrgood_pp_pg/sky130_fd_sc_hdll__udp_pwrgood_pp_pg.v"

`celldefine
module sky130_fd_sc_hdll__muxb16to1 (
    Z   ,
    D   ,
    S   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output        Z   ;
    input  [15:0] D   ;
    input  [15:0] S   ;
    input         VPWR;
    input         VGND;
    input         VPB ;
    input         VNB ;

    // Local signals
    wire pwrgood_pp0_out_d0  ;
    wire pwrgood_pp1_out_s0  ;
    wire pwrgood_pp2_out_d1  ;
    wire pwrgood_pp3_out_s1  ;
    wire pwrgood_pp4_out_d2  ;
    wire pwrgood_pp5_out_s2  ;
    wire pwrgood_pp6_out_d3  ;
    wire pwrgood_pp7_out_s3  ;
    wire pwrgood_pp8_out_d4  ;
    wire pwrgood_pp9_out_s4  ;
    wire pwrgood_pp10_out_d5 ;
    wire pwrgood_pp11_out_s5 ;
    wire pwrgood_pp12_out_d6 ;
    wire pwrgood_pp13_out_s6 ;
    wire pwrgood_pp14_out_d7 ;
    wire pwrgood_pp15_out_s7 ;
    wire pwrgood_pp16_out_d8 ;
    wire pwrgood_pp17_out_s8 ;
    wire pwrgood_pp18_out_d9 ;
    wire pwrgood_pp19_out_s9 ;
    wire pwrgood_pp20_out_d10;
    wire pwrgood_pp21_out_s10;
    wire pwrgood_pp22_out_d11;
    wire pwrgood_pp23_out_s11;
    wire pwrgood_pp24_out_d12;
    wire pwrgood_pp25_out_s12;
    wire pwrgood_pp26_out_d13;
    wire pwrgood_pp27_out_s13;
    wire pwrgood_pp28_out_d14;
    wire pwrgood_pp29_out_s14;
    wire pwrgood_pp30_out_d15;
    wire pwrgood_pp31_out_s15;

    //                                   Name          Output                Other arguments
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp0  (pwrgood_pp0_out_d0  , D[0], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp1  (pwrgood_pp1_out_s0  , S[0], VPWR, VGND                           );
    bufif1                               bufif10      (Z                   , !pwrgood_pp0_out_d0, pwrgood_pp1_out_s0    );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp2  (pwrgood_pp2_out_d1  , D[1], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp3  (pwrgood_pp3_out_s1  , S[1], VPWR, VGND                           );
    bufif1                               bufif11      (Z                   , !pwrgood_pp2_out_d1, pwrgood_pp3_out_s1    );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp4  (pwrgood_pp4_out_d2  , D[2], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp5  (pwrgood_pp5_out_s2  , S[2], VPWR, VGND                           );
    bufif1                               bufif12      (Z                   , !pwrgood_pp4_out_d2, pwrgood_pp5_out_s2    );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp6  (pwrgood_pp6_out_d3  , D[3], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp7  (pwrgood_pp7_out_s3  , S[3], VPWR, VGND                           );
    bufif1                               bufif13      (Z                   , !pwrgood_pp6_out_d3, pwrgood_pp7_out_s3    );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp8  (pwrgood_pp8_out_d4  , D[4], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp9  (pwrgood_pp9_out_s4  , S[4], VPWR, VGND                           );
    bufif1                               bufif14      (Z                   , !pwrgood_pp8_out_d4, pwrgood_pp9_out_s4    );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp10 (pwrgood_pp10_out_d5 , D[5], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp11 (pwrgood_pp11_out_s5 , S[5], VPWR, VGND                           );
    bufif1                               bufif15      (Z                   , !pwrgood_pp10_out_d5, pwrgood_pp11_out_s5  );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp12 (pwrgood_pp12_out_d6 , D[6], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp13 (pwrgood_pp13_out_s6 , S[6], VPWR, VGND                           );
    bufif1                               bufif16      (Z                   , !pwrgood_pp12_out_d6, pwrgood_pp13_out_s6  );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp14 (pwrgood_pp14_out_d7 , D[7], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp15 (pwrgood_pp15_out_s7 , S[7], VPWR, VGND                           );
    bufif1                               bufif17      (Z                   , !pwrgood_pp14_out_d7, pwrgood_pp15_out_s7  );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp16 (pwrgood_pp16_out_d8 , D[8], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp17 (pwrgood_pp17_out_s8 , S[8], VPWR, VGND                           );
    bufif1                               bufif18      (Z                   , !pwrgood_pp16_out_d8, pwrgood_pp17_out_s8  );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp18 (pwrgood_pp18_out_d9 , D[9], VPWR, VGND                           );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp19 (pwrgood_pp19_out_s9 , S[9], VPWR, VGND                           );
    bufif1                               bufif19      (Z                   , !pwrgood_pp18_out_d9, pwrgood_pp19_out_s9  );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp20 (pwrgood_pp20_out_d10, D[10], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp21 (pwrgood_pp21_out_s10, S[10], VPWR, VGND                          );
    bufif1                               bufif110     (Z                   , !pwrgood_pp20_out_d10, pwrgood_pp21_out_s10);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp22 (pwrgood_pp22_out_d11, D[11], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp23 (pwrgood_pp23_out_s11, S[11], VPWR, VGND                          );
    bufif1                               bufif111     (Z                   , !pwrgood_pp22_out_d11, pwrgood_pp23_out_s11);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp24 (pwrgood_pp24_out_d12, D[12], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp25 (pwrgood_pp25_out_s12, S[12], VPWR, VGND                          );
    bufif1                               bufif112     (Z                   , !pwrgood_pp24_out_d12, pwrgood_pp25_out_s12);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp26 (pwrgood_pp26_out_d13, D[13], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp27 (pwrgood_pp27_out_s13, S[13], VPWR, VGND                          );
    bufif1                               bufif113     (Z                   , !pwrgood_pp26_out_d13, pwrgood_pp27_out_s13);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp28 (pwrgood_pp28_out_d14, D[14], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp29 (pwrgood_pp29_out_s14, S[14], VPWR, VGND                          );
    bufif1                               bufif114     (Z                   , !pwrgood_pp28_out_d14, pwrgood_pp29_out_s14);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp30 (pwrgood_pp30_out_d15, D[15], VPWR, VGND                          );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp31 (pwrgood_pp31_out_s15, S[15], VPWR, VGND                          );
    bufif1                               bufif115     (Z                   , !pwrgood_pp30_out_d15, pwrgood_pp31_out_s15);

endmodule
`endcelldefine

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_PP_V