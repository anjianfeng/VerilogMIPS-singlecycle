module imem( addr, dout );
    
    input [11:0] addr; 
    input [31:0] dout;
    
    reg [31:0] imem[1023:0];
    
    // Note: remove lower 2 bits of addr
    assign dout = imem[addr[11:2]];

    // You should generate the mips machine codes into imem.txt from MARS.
    initial begin
    	$readmemh( "imem.txt" , imem) ;
    end
    
endmodule    
