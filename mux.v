module mux(
	  input [1:0] Sel,
	  input [7:0] A, [7:0] B, [7:0] C, [7:0] D,
	  input Enable,
	  output [7:0] O
   );
       assign O = Enable ? ((Sel == 2'b00) ? A :
                  (Sel == 2'b01) ? B : (Sel == 2'b10) ? C : D) : 0;
 
endmodule
