/*
 * Copyright (c) 2018, Gary Guo
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 */

// A dummy AXI master device that never sends requests. Useful for prototyping.
module axi_dummy_master (
    axi_channel.master slave
);

    assign slave.aw_id     = '0;
    assign slave.aw_addr   = '0;
    assign slave.aw_len    = 8'h0;
    assign slave.aw_size   = 3'h0;
    assign slave.aw_burst  = axi_common::BURST_INCR;
    assign slave.aw_lock   = 1'b0;
    assign slave.aw_cache  = 4'h0;
    assign slave.aw_prot   = 3'h0;
    assign slave.aw_qos    = 4'h0;
    assign slave.aw_region = 4'h0;
    assign slave.aw_user   = '0;
    assign slave.aw_valid  = 1'b0;

    assign slave.w_data    = '0;
    assign slave.w_strb    = '0;
    assign slave.w_last    = 1'b0;
    assign slave.w_user    = '0;
    assign slave.w_valid   = 1'b0;

    assign slave.b_ready   = 1'b0;

    assign slave.ar_id     = '0;
    assign slave.ar_addr   = '0;
    assign slave.ar_len    = 8'h0;
    assign slave.ar_size   = 3'h0;
    assign slave.ar_burst  = axi_common::BURST_INCR;
    assign slave.ar_lock   = 1'b0;
    assign slave.ar_cache  = 4'h0;
    assign slave.ar_prot   = 3'h0;
    assign slave.ar_qos    = 4'h0;
    assign slave.ar_region = 4'h0;
    assign slave.ar_user   = '0;
    assign slave.ar_valid  = 1'b0;

    assign slave.r_ready   = 1'b0;

endmodule
