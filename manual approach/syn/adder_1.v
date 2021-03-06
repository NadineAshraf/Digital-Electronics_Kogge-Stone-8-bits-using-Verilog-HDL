
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.20 - 15.20-p004_1
// Generated on: May 18 2022 18:29:15

// Verification Directory fv/KoggeStoneAdder 

module PgCell(Ai, Bi, Pi, Gi);
  input Ai, Bi;
  output Pi, Gi;
  wire Ai, Bi;
  wire Pi, Gi;
  xor g1 (Pi, Ai, Bi);
  and g2 (Gi, Ai, Bi);
endmodule

module GrayCell(Pi, Gi, Gki, G);
  input Pi, Gi, Gki;
  output G;
  wire Pi, Gi, Gki;
  wire G;
  wire w1;
  and g1 (w1, Pi, Gki);
  or g2 (G, w1, Gi);
endmodule

module BlackCell(Pi, Gi, Pki, Gki, P, G);
  input Pi, Gi, Pki, Gki;
  output P, G;
  wire Pi, Gi, Pki, Gki;
  wire P, G;
  GrayCell gcell(.Pi (Pi), .Gi (Gi), .Gki (Gki), .G (G));
  and g1 (P, Pi, Pki);
endmodule

module SumCell(Pi, Gki, Si);
  input Pi, Gki;
  output Si;
  wire Pi, Gki;
  wire Si;
  xor g1 (Si, Pi, Gki);
endmodule

module KoggeStoneAdder(A, B, Ci, S, Co);
  input [7:0] A, B;
  input Ci;
  output [7:0] S;
  output Co;
  wire [7:0] A, B;
  wire Ci;
  wire [7:0] S;
  wire Co;
  wire G00, G01, G02, G03, G04, G05, G06, G07;
  wire G10, G11, G12, G13, G14, G15, G16, G17;
  wire G21, G22, G23, G24, G25, G26, G27, G33;
  wire G34, G35, G36, G37, P00, P01, P02, P03;
  wire P04, P05, P06, P07, P11, P12, P13, P14;
  wire P15, P16, P17, P23, P24, P25, P26, P27;
  wire P37;
  PgCell E0(.Ai (A[0]), .Bi (B[0]), .Pi (P00), .Gi (G00));
  PgCell E1(.Ai (A[1]), .Bi (B[1]), .Pi (P01), .Gi (G01));
  PgCell E2(.Ai (A[2]), .Bi (B[2]), .Pi (P02), .Gi (G02));
  PgCell E3(.Ai (A[3]), .Bi (B[3]), .Pi (P03), .Gi (G03));
  PgCell E4(.Ai (A[4]), .Bi (B[4]), .Pi (P04), .Gi (G04));
  PgCell E5(.Ai (A[5]), .Bi (B[5]), .Pi (P05), .Gi (G05));
  PgCell E6(.Ai (A[6]), .Bi (B[6]), .Pi (P06), .Gi (G06));
  PgCell E7(.Ai (A[7]), .Bi (B[7]), .Pi (P07), .Gi (G07));
  GrayCell GB10(.Pi (P00), .Gi (G00), .Gki (Ci), .G (G10));
  GrayCell GB21(.Pi (P11), .Gi (G11), .Gki (Ci), .G (G21));
  GrayCell GB22(.Pi (P12), .Gi (G12), .Gki (G10), .G (G22));
  GrayCell GB33(.Pi (P23), .Gi (G23), .Gki (Ci), .G (G33));
  GrayCell GB34(.Pi (P24), .Gi (G24), .Gki (G10), .G (G34));
  GrayCell GB35(.Pi (P25), .Gi (G25), .Gki (G21), .G (G35));
  GrayCell GB36(.Pi (P26), .Gi (G26), .Gki (G22), .G (G36));
  GrayCell GB47(.Pi (P37), .Gi (G37), .Gki (Ci), .G (Co));
  BlackCell PB11(.Pi (P01), .Gi (G01), .Pki (P00), .Gki (G00), .P
       (P11), .G (G11));
  BlackCell PB12(.Pi (P02), .Gi (G02), .Pki (P01), .Gki (G01), .P
       (P12), .G (G12));
  BlackCell PB13(.Pi (P03), .Gi (G03), .Pki (P02), .Gki (G02), .P
       (P13), .G (G13));
  BlackCell PB14(.Pi (P04), .Gi (G04), .Pki (P03), .Gki (G03), .P
       (P14), .G (G14));
  BlackCell PB15(.Pi (P05), .Gi (G05), .Pki (P04), .Gki (G04), .P
       (P15), .G (G15));
  BlackCell PB16(.Pi (P06), .Gi (G06), .Pki (P05), .Gki (G05), .P
       (P16), .G (G16));
  BlackCell PB17(.Pi (P07), .Gi (G07), .Pki (P06), .Gki (G06), .P
       (P17), .G (G17));
  BlackCell PB23(.Pi (P13), .Gi (G13), .Pki (P11), .Gki (G11), .P
       (P23), .G (G23));
  BlackCell PB24(.Pi (P14), .Gi (G14), .Pki (P12), .Gki (G12), .P
       (P24), .G (G24));
  BlackCell PB25(.Pi (P15), .Gi (G15), .Pki (P13), .Gki (G13), .P
       (P25), .G (G25));
  BlackCell PB26(.Pi (P16), .Gi (G16), .Pki (P14), .Gki (G14), .P
       (P26), .G (G26));
  BlackCell PB27(.Pi (P17), .Gi (G17), .Pki (P15), .Gki (G15), .P
       (P27), .G (G27));
  BlackCell PB37(.Pi (P27), .Gi (G27), .Pki (P23), .Gki (G23), .P
       (P37), .G (G37));
  SumCell S0(.Pi (P00), .Gki (Ci), .Si (S[0]));
  SumCell S1(.Pi (P01), .Gki (G10), .Si (S[1]));
  SumCell S2(.Pi (P02), .Gki (G21), .Si (S[2]));
  SumCell S3(.Pi (P03), .Gki (G22), .Si (S[3]));
  SumCell S4(.Pi (P04), .Gki (G33), .Si (S[4]));
  SumCell S5(.Pi (P05), .Gki (G34), .Si (S[5]));
  SumCell S6(.Pi (P06), .Gki (G35), .Si (S[6]));
  SumCell S7(.Pi (P07), .Gki (G36), .Si (S[7]));
endmodule

