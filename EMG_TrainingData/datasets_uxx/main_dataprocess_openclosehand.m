clear all; close all;
ub = 4900;
ub2 = 5400;
load('data_handclose_u1.csv');
load('data_handclose_u2.csv');
load('data_handclose_u3.csv');
load('data_handclose_u4.csv');
load('data_handclose_u5.csv');
load('data_handclose_u6.csv');
load('data_handclose_u7.csv');
load('data_handclose_u8.csv');
load('data_handclose_u9.csv');
load('data_handclose_u10.csv');
load('data_handclose_u11.csv');
load('data_handclose_u12.csv');
load('data_handclose_u13.csv');
load('data_handclose_u14.csv');
load('data_handclose_u15.csv');
load('data_handclose_u16.csv');
load('data_handclose_u17.csv');
load('data_handclose_u18.csv');
load('data_handclose_u19.csv');
load('data_handclose_u20.csv');
load('data_handclose_u21.csv');
load('data_handclose_u22.csv');
load('data_handclose_u23.csv');
load('data_handclose_u24.csv');
load('data_handclose_u25.csv');
load('data_handclose_u26.csv');
load('data_handclose_u27.csv');
load('data_handclose_u28.csv');
load('data_handclose_u29.csv');
load('data_handclose_u30.csv');
load('data_handclose_u31.csv');
load('data_handclose_u32.csv');
load('data_handclose_u33.csv');
load('data_handclose_u34.csv');
load('data_handclose_u35.csv');
load('data_handclose_u36.csv');
load('data_handclose_u37.csv');
load('data_handclose_u38.csv');
load('data_handclose_u39.csv');
load('data_handclose_u40.csv');
load('data_handclose_u41.csv');

%load('data_handclose_u9.csv');
%[size(data_handclose_u1); size(data_handclose_u2); size(data_handclose_u3); size(data_handclose_u4); size(data_handclose_u5); size(data_handclose_u6); size(data_handclose_u7); size(data_handclose_u8)];

%data_handclose_u1 = [data_handclose_u1(:,3)];
data_handclose_u2 = [data_handclose_u2(1:ub,2)];
data_handclose_u3 = [data_handclose_u3(1:ub,2)];
data_handclose_u4 = [data_handclose_u4(1:ub,2)];
%data_handclose_u5 = [data_handclose_u5(1:ub,2)]; Not usable histogram is
%too similar to Open hand
data_handclose_u6 = [data_handclose_u6(1:ub,2)];
data_handclose_u7 = [data_handclose_u7(1:ub,2)];
data_handclose_u8 = [data_handclose_u8(1:ub,2)];
data_handclose_u9 = [data_handclose_u9(1:ub2,2)];
data_handclose_u10 = [data_handclose_u10(1:ub2,2)];
data_handclose_u11 = [data_handclose_u11(1:ub2,2)];
data_handclose_u12 = [data_handclose_u12(1:ub2,2)];
data_handclose_u13 = [data_handclose_u13(1:ub2,2)];
data_handclose_u14 = [data_handclose_u14(1:ub2,2)];
data_handclose_u15 = [data_handclose_u15(1:ub2,2)];
data_handclose_u16 = [data_handclose_u16(1:ub2,2)];
data_handclose_u17 = [data_handclose_u17(1:ub2,2)];
data_handclose_u18 = [data_handclose_u18(1:ub2,2)];
data_handclose_u19 = [data_handclose_u19(1:ub2,2)];
data_handclose_u20 = [data_handclose_u20(1:ub2,2)];
data_handclose_u21 = [data_handclose_u21(1:ub2,2)];
data_handclose_u22 = [data_handclose_u22(1:ub2,2)];
data_handclose_u23 = [data_handclose_u23(1:ub2,2)];
data_handclose_u24 = [data_handclose_u24(1:ub2,2)];
data_handclose_u25 = [data_handclose_u25(1:ub2,2)];
data_handclose_u26 = [data_handclose_u26(1:ub2,2)];
data_handclose_u27 = [data_handclose_u27(1:ub2,2)];
data_handclose_u28 = [data_handclose_u28(1:ub2,2)];
data_handclose_u29 = [data_handclose_u29(1:ub,2)];
data_handclose_u30 = [data_handclose_u30(1:ub2,2)];
data_handclose_u31 = [data_handclose_u31(1:ub2,2)];
data_handclose_u32 = [data_handclose_u32(1:ub2,2)];
data_handclose_u33 = [data_handclose_u33(1:ub2,2)];
data_handclose_u34 = [data_handclose_u34(1:ub2,2)];
data_handclose_u35 = [data_handclose_u35(1:ub2,2)];
data_handclose_u36 = [data_handclose_u36(1:ub2,2)];
data_handclose_u37 = [data_handclose_u37(1:ub2,2)];
data_handclose_u38 = [data_handclose_u38(1:ub2,2)];
data_handclose_u39 = [data_handclose_u39(1:ub2,2)];
data_handclose_u40 = [data_handclose_u40(1:ub2,2)];
data_handclose_u41 = [data_handclose_u41(1:ub2,2)];

figure('Name','HandClose2to8') %U5 is not included
%subplot(2,4,1); hist(data_handclose_u1,0:50:600);
subplot(2,3,1); hist(data_handclose_u2,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u3,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u4,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u6,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u7,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u8,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose9to13');
subplot(2,3,1); hist(data_handclose_u9,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u10,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u11,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u12,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u13,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u13,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose14to19');
subplot(2,3,1); hist(data_handclose_u14,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u15,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u16,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u17,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u18,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u19,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose20to25');
subplot(2,3,1); hist(data_handclose_u20,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u21,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u22,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u23,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u24,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u25,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose26to31');
subplot(2,3,1); hist(data_handclose_u26,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u27,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u28,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u29,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u30,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u31,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose32to37');
subplot(2,3,1); hist(data_handclose_u32,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handclose_u33,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handclose_u34,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,4); hist(data_handclose_u35,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handclose_u36,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handclose_u37,0:50:600); axis([0 600 0 2000]); grid on;

figure('Name', 'HandClose38to40');
subplot(2,2,1); hist(data_handclose_u38,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,2,2); hist(data_handclose_u39,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,2,3); hist(data_handclose_u40,0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,2,4); hist(data_handclose_u41,0:50:600); axis([0 600 0 2000]); grid on;


%-------------------------------------------------------

%load('data_handopen_u1.csv'); Unknown text on line number 1 of ASCII file data_handopen_u1.csv
load('data_handopen_u2.csv');
load('data_handopen_u3.csv');
load('data_handopen_u4.csv');
%load('data_handopen_u5.csv'); Data similar to Close Hand
load('data_handopen_u6.csv');
%load('data_handopen_u7.csv'); Data similar to Close Hand
%load('data_handopen_u8.csv'); too little data
load('data_handopen_u9.csv');
load('data_handopen_u10.csv');
load('data_handopen_u11.csv');
load('data_handopen_u12.csv');
load('data_handopen_u13.csv');
load('data_handopen_u14.csv');
load('data_handopen_u15.csv');
load('data_handopen_u16.csv');
load('data_handopen_u17.csv');
load('data_handopen_u18.csv');
load('data_handopen_u19.csv');
load('data_handopen_u20.csv');
load('data_handopen_u21.csv');
load('data_handopen_u22.csv');
load('data_handopen_u23.csv');
load('data_handopen_u24.csv');
load('data_handopen_u25.csv');
load('data_handopen_u26.csv');
load('data_handopen_u27.csv');
load('data_handopen_u28.csv');
load('data_handopen_u29.csv');
%load('data_handopen_u30.csv');
load('data_handopen_u31.csv');
load('data_handopen_u32.csv');
load('data_handopen_u33.csv');
load('data_handopen_u34.csv');
load('data_handopen_u35.csv');
load('data_handopen_u36.csv');
load('data_handopen_u37.csv');
load('data_handopen_u38.csv');
load('data_handopen_u39.csv');
load('data_handopen_u40.csv');
load('data_handopen_u41.csv');
load('data_handopen_u42.csv');
load('data_handopen_u43.csv');

%[size(data_handopen_u3); size(data_handopen_u4); size(data_handopen_u5); size(data_handopen_u6); size(data_handopen_u7); size(data_handopen_u8);];

data_handopen_u2 = [data_handopen_u2(1:ub,2)];
data_handopen_u3 = [data_handopen_u3(1:ub,2)];
data_handopen_u4 = [data_handopen_u4(1:ub,2)];
%data_handopen_u5 = [data_handopen_u5(1:ub,2)];
data_handopen_u6 = [data_handopen_u6(1:ub,2)];
%data_handopen_u7 = [data_handopen_u7(1:ub,2)];
data_handopen_u9  = [data_handopen_u9(1:ub2,2)];
data_handopen_u10 = [data_handopen_u10(1:ub2,2)];
data_handopen_u11 = [data_handopen_u11(1:ub2,2)];
data_handopen_u12 = [data_handopen_u12(1:ub2,2)];
data_handopen_u13 = [data_handopen_u13(1:ub2,2)];
data_handopen_u14 = [data_handopen_u14(1:ub2,2)];
data_handopen_u15 = [data_handopen_u15(1:ub2,2)];
data_handopen_u16 = [data_handopen_u16(1:ub2,2)];
data_handopen_u17 = [data_handopen_u17(1:ub2,2)];
data_handopen_u18 = [data_handopen_u18(1:ub2,2)];
data_handopen_u19 = [data_handopen_u19(1:ub2,2)];
data_handopen_u20 = [data_handopen_u20(1:ub2,2)];
data_handopen_u21 = [data_handopen_u21(1:ub2,2)];
data_handopen_u22 = [data_handopen_u22(1:ub2,2)];
data_handopen_u23 = [data_handopen_u23(1:ub2,2)];
data_handopen_u24 = [data_handopen_u24(1:ub2,2)];
data_handopen_u25 = [data_handopen_u25(1:ub2,2)];
data_handopen_u26 = [data_handopen_u26(1:ub2,2)];
data_handopen_u27 = [data_handopen_u27(1:ub2,2)];
data_handopen_u28 = [data_handopen_u28(1:ub2,2)];
data_handopen_u29 = [data_handopen_u29(1:ub2,2)];
%data_handopen_u30 = [data_handopen_u30(1:ub2,2)];
data_handopen_u31 = [data_handopen_u31(1:ub2,2)];
data_handopen_u32 = [data_handopen_u32(1:ub2,2)];
data_handopen_u33 = [data_handopen_u33(1:ub2,2)];
data_handopen_u34 = [data_handopen_u34(1:ub2,2)];
data_handopen_u35 = [data_handopen_u35(1:ub2,2)];
data_handopen_u36 = [data_handopen_u36(1:ub2,2)];
data_handopen_u37 = [data_handopen_u37(1:ub2,2)];
data_handopen_u38 = [data_handopen_u38(1:ub2,2)];
data_handopen_u39 = [data_handopen_u39(1:ub2,2)];
data_handopen_u40 = [data_handopen_u40(1:ub2,2)];
data_handopen_u41 = [data_handopen_u41(1:ub2,2)];
data_handopen_u42 = [data_handopen_u42(1:ub2,2)];
data_handopen_u43 = [data_handopen_u43(1:ub2,2)];

%hist(data_handopen_u2, 0:10:325); axis([0 325 0 3000]); grid on; 

figure('Name','HandOpen3To7'); 
subplot(2,3,1); hist(data_handopen_u3, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,2); hist(data_handopen_u4, 0:50:600); axis([0 600 0 2000]); grid on;
%subplot(2,3,3); hist(data_handopen_u5, 0:40:600); axis([0 350 0 3000]); grid on; 
subplot(2,3,4); hist(data_handopen_u6, 0:50:600); axis([0 600 0 2000]); grid on;
%subplot(2,3,5); hist(data_handopen_u7, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen9to14');
%subplot(2,3,1); hist(data_handopen_u9, 0:50:600); axis([0 600 0 2000]); grid on;
%subplot(2,3,2); hist(data_handopen_u10, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u11, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u12, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u13, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handopen_u14, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen15to20');
subplot(2,3,1); hist(data_handopen_u15, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handopen_u16, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u17, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u18, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u19, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handopen_u20, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen21to25');
subplot(2,3,1); hist(data_handopen_u20, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handopen_u21, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u22, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u23, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u24, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handopen_u25, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen26to32');
subplot(2,3,1); hist(data_handopen_u26, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handopen_u27, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u28, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u29, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u31, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handopen_u32, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen33to38');
subplot(2,3,1); hist(data_handopen_u33, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handopen_u34, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u35, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u36, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u37, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,6); hist(data_handopen_u38, 0:50:600); axis([0 600 0 2000]); grid on;

figure('Name','HandOpen39to43');
subplot(2,3,1); hist(data_handopen_u39, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,2); hist(data_handopen_u40, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,3); hist(data_handopen_u41, 0:50:600); axis([0 600 0 2000]); grid on; 
subplot(2,3,4); hist(data_handopen_u42, 0:50:600); axis([0 600 0 2000]); grid on;
subplot(2,3,5); hist(data_handopen_u43, 0:50:600); axis([0 600 0 2000]); grid on;
