clear;
Fadc=312.5e6;
axi_clk = 156.25e6;
Ts=1/Fadc;
filt_len=128;
pass_band_weight =  1;
stop_band_weight = 2;%40
pass_band_freq  = 8e6/(Fadc*16/2);
stop_band_freq  = 16e6/(Fadc*16/2);
filt = firpm(filt_len-1, [0,pass_band_freq,stop_band_freq,1], {'myfrf', [1 1 0 0]}, [pass_band_weight, stop_band_weight]);
filt2=ones(1,128);
fvtool(filt./sum(filt),1,filt2./sum(filt2),1);
%LO signal at 2.4609GHz
coef_bits=16;
coef_bin=15;
LO=round(exp(1j*2*pi*63/128.*(0:1:127))*(2^coef_bin-1));
idx = find(real(LO) < 0);
LOrealUint = real(LO);
LOrealUint(idx) = LOrealUint(idx) + 2^coef_bits;
idx2 = find(imag(LO) < 0);
LOimagUint = imag(LO);
LOimagUint(idx) = LOimagUint(idx) + 2^coef_bits;
LOcomplex=LOrealUint+LOimagUint*2^coef_bits;

%RF source signal
samples=4096;
t0=(0:samples-1)/samples;
phi = cumsum(t0)/32;
chirp = exp(-j*2*pi*phi);
fm=2.46e9;
sine1=exp(1j*2*pi*fm.*(0:1:length(t0)-1)/(Fadc*16));
sine2=exp(1j*2*pi*fm.*(0:1:length(t0)-1)/(Fadc*16));
sine1=sine1;
%sine1=zeros(1,length(t0));
num_sample=size(t0,2);
num_lane=16;
SSR=16;
chirp_data=reshape(chirp,num_lane, num_sample/num_lane);
sindata=reshape(sine1,num_lane,num_sample/num_lane);
% testsignal=(0:16*128*16-1)*(1+1j);
% testsignal=reshape(testsignal,16,2048);
simin.signals.dimensions = 16;
simin.signals.values = chirp_data';
simin.time = [];
simin1.signals.dimensions = 16;
simin1.signals.values = sindata';
simin1.time = [];