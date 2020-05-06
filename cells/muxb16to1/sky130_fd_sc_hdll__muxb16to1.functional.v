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


`ifndef SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_V
`define SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_V

/**
 * muxb16to1: Buffered 16-input multiplexer.
 *
 * Verilog simulation functional model.
 */

`timescale 1ns / 1ps
`default_nettype none

`celldefine
module sky130_fd_sc_hdll__muxb16to1 (
    Z,
    D,
    S
);

    // Module ports
    output        Z;
    input  [15:0] D;
    input  [15:0] S;

    //     Name      Output  Other arguments
    bufif1 bufif10  (Z     , !D[0], S[0]    );
    bufif1 bufif11  (Z     , !D[1], S[1]    );
    bufif1 bufif12  (Z     , !D[2], S[2]    );
    bufif1 bufif13  (Z     , !D[3], S[3]    );
    bufif1 bufif14  (Z     , !D[4], S[4]    );
    bufif1 bufif15  (Z     , !D[5], S[5]    );
    bufif1 bufif16  (Z     , !D[6], S[6]    );
    bufif1 bufif17  (Z     , !D[7], S[7]    );
    bufif1 bufif18  (Z     , !D[8], S[8]    );
    bufif1 bufif19  (Z     , !D[9], S[9]    );
    bufif1 bufif110 (Z     , !D[10], S[10]  );
    bufif1 bufif111 (Z     , !D[11], S[11]  );
    bufif1 bufif112 (Z     , !D[12], S[12]  );
    bufif1 bufif113 (Z     , !D[13], S[13]  );
    bufif1 bufif114 (Z     , !D[14], S[14]  );
    bufif1 bufif115 (Z     , !D[15], S[15]  );

endmodule
`endcelldefine

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__MUXB16TO1_FUNCTIONAL_V