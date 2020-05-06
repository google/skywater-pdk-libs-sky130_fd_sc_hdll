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


`ifndef SKY130_FD_SC_HDLL__MUXB4TO1_BEHAVIORAL_V
`define SKY130_FD_SC_HDLL__MUXB4TO1_BEHAVIORAL_V

/**
 * muxb4to1: Buffered 4-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`default_nettype none

`celldefine
module sky130_fd_sc_hdll__muxb4to1 (
    Z,
    D,
    S
);

    // Module ports
    output       Z;
    input  [3:0] D;
    input  [3:0] S;

    // Module supplies
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    //     Name     Output  Other arguments
    bufif1 bufif10 (Z     , !D[0], S[0]    );
    bufif1 bufif11 (Z     , !D[1], S[1]    );
    bufif1 bufif12 (Z     , !D[2], S[2]    );
    bufif1 bufif13 (Z     , !D[3], S[3]    );

endmodule
`endcelldefine

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__MUXB4TO1_BEHAVIORAL_V