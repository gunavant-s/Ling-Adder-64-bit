`timescale 1ns / 1ps

  module tb_ling();
  
  parameter M=64,N=64;
  
  reg [N-1:0]ain;
  reg [M-1:0]bin;
  reg cin;
  
  wire [N-1:0]s;
  wire cout;
  
  //---- Instantiation of main test module----
  ling_64 UUT(.ain(ain),.bin(bin),.cin(cin),.s(s),.cout(cout));
  
  
  // initializing the inputs to the test module
  // initial block executes only once
  
  initial
  repeat(15)
  begin
  	#10 ain = $random; bin = $random; cin = $random;
  	#100//give required simulation time to complete the operation one by one.
  	#100
  	#10
  	//-----VERIFICATION OF THE OBTAINED RESULT ------
  	$display(" a=%d,b=%d,cin=%d,a+b=%d,cout=$d",(ain),(bin),(cin),(s),(cout));
  
  	if( (ain)+(bin)+cin != (s + cout)) 
  		$display(" *ERROR* ");
  

     end
endmodule
