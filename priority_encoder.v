module priority_encoder(y, x, V, D3, D2, D1, D0);
	input D3, D2, D1, D0;
	output y, x, V;
	
	wire D2b, out1;
	
	not not1(D2b, D2);
	or or1(x, D3, D2);
	and and1(out1, D2b, D1);
	or or2(V, x, D1, D0);
	or or3(y, D3, out1);
endmodule