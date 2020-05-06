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


`ifndef SKY130_FD_SC_HDLL__MUXB4TO1_FUNCTIONAL_PP_V
`define SKY130_FD_SC_HDLL__MUXB4TO1_FUNCTIONAL_PP_V

/**
 * muxb4to1: Buffered 4-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`default_nettype none

// Import user defined primitives.
`include "../../models/udp_pwrgood_pp_pg/sky130_fd_sc_hdll__udp_pwrgood_pp_pg.v"

`celldefine
module sky130_fd_sc_hdll__muxb4to1 (
    Z   ,
    D   ,
    S   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output       Z   ;
    input  [3:0] D   ;
    input  [3:0] S   ;
    input        VPWR;
    input        VGND;
    input        VPB ;
    input        VNB ;

    // Local signals
    wire pwrgood_pp0_out_d0;
    wire pwrgood_pp1_out_s0;
    wire pwrgood_pp2_out_d1;
    wire pwrgood_pp3_out_s1;
    wire pwrgood_pp4_out_d2;
    wire pwrgood_pp5_out_s2;
    wire pwrgood_pp6_out_d3;
    wire pwrgood_pp7_out_s3;

    //                                   Name         Output              Other arguments
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp0 (pwrgood_pp0_out_d0, D[0], VPWR, VGND                       );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp1 (pwrgood_pp1_out_s0, S[0], VPWR, VGND                       );
    bufif1                               bufif10     (Z                 , !pwrgood_pp0_out_d0, pwrgood_pp1_out_s0);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp2 (pwrgood_pp2_out_d1, D[1], VPWR, VGND                       );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp3 (pwrgood_pp3_out_s1, S[1], VPWR, VGND                       );
    bufif1                               bufif11     (Z                 , !pwrgood_pp2_out_d1, pwrgood_pp3_out_s1);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp4 (pwrgood_pp4_out_d2, D[2], VPWR, VGND                       );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp5 (pwrgood_pp5_out_s2, S[2], VPWR, VGND                       );
    bufif1                               bufif12     (Z                 , !pwrgood_pp4_out_d2, pwrgood_pp5_out_s2);
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp6 (pwrgood_pp6_out_d3, D[3], VPWR, VGND                       );
    sky130_fd_sc_hdll__udp_pwrgood_pp$PG pwrgood_pp7 (pwrgood_pp7_out_s3, S[3], VPWR, VGND                       );
    bufif1                               bufif13     (Z                 , !pwrgood_pp6_out_d3, pwrgood_pp7_out_s3);

endmodule
`endcelldefine

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__MUXB4TO1_FUNCTIONAL_PP_V