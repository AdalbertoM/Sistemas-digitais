module circuito1(
    input b3,
    input b2,
    input b1,
    input b0,
    output s0);

wire [3:0] entrada = {b3, b2, b1, b0};

/*
assign s0 = 
      (entrada == 0) 
    | (entrada == 2)
    | (entrada == 3)
    | (entrada == 5)
    | (entrada == 6)
    | (entrada == 7)
    | (entrada == 8)
    | (entrada == 9);
*/
assign s0 = 
    ~(  (entrada == 1) 
       |(entrada == 4) );

endmodule

module testbench;
reg i_b3, i_b2, i_b1, i_b0;
wire o;

circuito1 teste(i_b3, i_b2, i_b1, i_b0, o);

initial begin
    $dumpvars;
    i_b3 = 0; i_b2 = 0; i_b1 = 0; i_b0 = 0;
    #4;
    i_b3 = 0; i_b2 = 0; i_b1 = 0; i_b0 = 1;
    #4;
    i_b3 = 0; i_b2 = 0; i_b1 = 1; i_b0 = 0;
    #4;
    i_b3 = 0; i_b2 = 0; i_b1 = 1; i_b0 = 1;
    #4;
    i_b3 = 0; i_b2 = 1; i_b1 = 0; i_b0 = 0;
    #4;
    i_b3 = 0; i_b2 = 1; i_b1 = 0; i_b0 = 1;
    #4;
    i_b3 = 0; i_b2 = 1; i_b1 = 1; i_b0 = 0;
    #4;
    i_b3 = 0; i_b2 = 1; i_b1 = 1; i_b0 = 1;
    #4;
    i_b3 = 1; i_b2 = 0; i_b1 = 0; i_b0 = 0;
    #4;
    i_b3 = 1; i_b2 = 0; i_b1 = 0; i_b0 = 1;
    #4;

end

endmodule

