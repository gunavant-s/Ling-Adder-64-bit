`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant 
// Design Name: Ling 64 bit
// Module Name: ling
// Project Name: Ling Adder 64 bit
//////////////////////////////////////////////////////////////////////////////////

module ling_64(ain,bin,cin,s,cout);
 input [63:0] ain,bin;
 input cin;
 output[63:0] s;
 output cout; 
// input clk,enable;
 wire [63:0] a,b; wire c;
 wire [63:0] t,g,h,p;


	assign a = ain;
	assign b = bin;
	assign c = cin;

	assign g[63:0] = a [63:0] & b[63:0];
	assign t[63:0] = a [63:0] | b[63:0];
	assign p[63:0] = a [63:0] ^ b[63:0];
	
	
	assign h[0]   = g[0]|(c & t[0]);
	assign h[1]   = g[1]|g[0]|(c & t[0]);
	assign h[2]   = g[2]|g[1]|(g[0] & t[1])|(c & t[0] & t[1]);
	assign h[3]   = g[3]|g[2]|(g[1] & t[2])|(g[0] & t[1] & t[2])|(c & t[0] & t[1] & t[2]);

	assign h[4]   = g[4]|(t[3] & h[3]);
	assign h[5]   = g[5]|g[4]|(t[4] & t[3] & h[3]);
	assign h[6]   = g[6]|g[5]|(g[4] & t[5])|(t[5] & t[4] & t[3] & h[3]);
	assign h[7]   = g[7]|g[6]|(g[5] & t[6])|(t[6] & t[5] & g[4])|(t[6] & t[5] & t[4] & t[3] & h[3]);
	//8 bit
	
	assign h[8]   = g[8]|(t[7] & h[7]);
	assign h[9]   = g[9]|g[8]|(t[8] & t[7] & h[7]);
	assign h[10]  = g[10]|g[9]|(g[8] & t[9])|(t[9] & t[8] & t[7] & h[7]);
	assign h[11]  = g[11]|g[10]|(g[9] & t[10])|(t[10] & t[9] & g[8])|(t[10] & t[9] & t[8] & t[7] & h[7]);

	assign h[12]  = g[12]|(t[11] & h[11]);
	assign h[13]  = g[13]|g[12]|(t[12] & t[11] & h[11]);
	assign h[14]  = g[14]|g[13]|(g[12] & t[13])|(t[13] & t[12] & t[11] & h[11]);
	assign h[15]  = g[15]|g[14]|(g[13] & t[14])|(t[14] & t[13] & g[12])|(t[14] & t[13] & t[12] & t[11] & h[11]);
	//16 bit
	
	assign h[16]  = g[16]|(t[15] & h[15]);
	assign h[17]  = g[17]|g[16]|(t[16] & t[15] & h[15]);
	assign h[18]  = g[18]|g[17]|(g[16] & t[17])|(t[17] & t[16] & t[15] & h[15]);
	assign h[19]  = g[19]|g[18]|(g[17] & t[18])|(t[18] & t[17] & g[16])|(t[18] & t[17] & t[16] & t[15] & h[15]);
	
	assign h[20]  = g[20]|(t[19] & h[19]);
	assign h[21]  = g[21]|g[20]|(t[20] & t[19] & h[19]);
	assign h[22]  = g[22]|g[21]|(g[20] & t[21])|(t[21] & t[20] & t[19] & h[19]);
	assign h[23]  = g[23]|g[22]|(g[21] & t[22])|(t[22] & t[21] & g[20])|(t[22] & t[21] & t[20] & t[19] & h[19]);
	//24-bit 
	
	assign h[24]  = g[24]|(t[23] & h[23]);
	assign h[25]  = g[25]|g[24]|(t[24] & t[23] & h[23]); // 26-bit 
	assign h[26]  = g[26]|g[25]|(g[24] & t[25])|(t[25] & t[24] & t[23] & h[23]);
	assign h[27]  = g[27]|g[26]|(g[25] & t[26])|(t[26] & t[25] & g[24])|(t[26] & t[25] & t[24] & t[23] & h[23]);
	
	assign h[28]  = g[28]|(t[27] & h[27]);
	assign h[29]  = g[29]|g[28]|(t[28] & t[27] & h[27]);
	assign h[30]  = g[30]|g[29]|(g[28] & t[29])|(t[29] & t[28] & t[27] & h[27]);
	assign h[31]  = g[31]|g[30]|(g[29] & t[30])|(t[30] & t[29] & g[28])|(t[30] & t[29] & t[28] & t[27] & h[27]);
	//32 bit
	
	assign h[32]  = g[32]|(t[31] & h[31]);
	assign h[33]  = g[33]|g[32]|(t[32] & t[31] & h[31]);
	assign h[34]  = g[34]|g[33]|(g[32] & t[33])|(t[33] & t[32] & t[31] & h[31]);
	assign h[35]  = g[35]|g[34]|(g[33] & t[34])|(t[34] & t[33] & g[32])|(t[34] & t[33] & t[32] & t[31] & h[31]);
	
	assign h[36]  = g[36]|(t[35] & h[35]);
	assign h[37]  = g[37]|g[36]|(t[36] & t[35] & h[35]);
	assign h[38]  = g[38]|g[37]|(g[36] & t[37])|(t[37] & t[36] & t[35] & h[35]);
	assign h[39]  = g[39]|g[38]|(g[37] & t[38])|(t[38] & t[37] & g[36])|(t[38] & t[37] & t[36] & t[35] & h[35]);

	assign h[40]  = g[40]|(t[39] & h[39]);
	assign h[41]  = g[41]|g[40]|(t[40] & t[39] & h[39]);
	assign h[42]  = g[42]|g[41]|(g[40] & t[41])|(t[41] & t[40] & t[39] & h[39]);
	assign h[43]  = g[43]|g[42]|(g[41] & t[42])|(t[42] & t[41] & g[40])|(t[42] & t[41] & t[40] & t[39] & h[39]);
	
	assign h[44]  = g[44]|(t[43] & h[43]);
	assign h[45]  = g[45]|g[44]|(t[44] & t[43] & h[43]);
	assign h[46]  = g[46]|g[45]|(g[44] & t[45])|(t[45] & t[44] & t[43] & h[43]);
	assign h[47]  = g[47]|g[46]|(g[45] & t[46])|(t[46] & t[45] & g[44])|(t[46] & t[45] & t[44] & t[43] & h[43]);
	//48 bit
	
	assign h[48]  = g[48]|(t[47] & h[47]);
	assign h[49]  = g[49]|g[48]|(t[48] & t[47] & h[47]);
	assign h[50]  = g[50]|g[49]|(g[48] & t[49])|(t[49] & t[48] & t[47] & h[47]);
	assign h[51]  = g[51]|g[50]|(g[49] & t[50])|(t[50] & t[49] & g[48])|(t[50] & t[49] & t[48] & t[47] & h[47]);
	
	assign h[52]  = g[52]|(t[51] & h[51]);
	assign h[53]  = g[53]|g[52]|(t[52] & t[51] & h[51]);
	assign h[54]  = g[54]|g[53]|(g[52] & t[53])|(t[53] & t[52] & t[51] & h[51]);
	assign h[55]  = g[55]|g[54]|(g[53] & t[54])|(t[54] & t[53] & g[52])|(t[54] & t[53] & t[52] & t[51] & h[51]);
	
	assign h[56]  = g[56]|(t[55] & h[55]);
	assign h[57]  = g[57]|g[56]|(t[56] & t[55] & h[55]);
	assign h[58]  = g[58]|g[57]|(g[56] & t[57])|(t[57] & t[56] & t[55] & h[55]);
	assign h[59]  = g[59]|g[58]|(g[57] & t[58])|(t[58] & t[57] & g[56])|(t[58] & t[57] & t[56] & t[55] & h[55]);
	
	assign h[60]  = g[60]|(t[59] & h[59]);
	assign h[61]  = g[61]|g[60]|(t[60] & t[59] & h[59]);
	assign h[62]  = g[62]|g[61]|(g[60] & t[61])|(t[61] & t[60] & t[59] & h[59]);
	assign h[63]  = g[63]|g[62]|(g[61] & t[62])|(t[62] & t[61] & g[60])|(t[62] & t[61] & t[60] & t[59] & h[59]);
	//64 bit
	

	assign s[0] = p[0] ^ h[0];
	assign s[63:1] = p[63:1] ^ (t[62:0] & h[62:0]);
	assign cout = h[63] & t[63];
	
endmodule 
