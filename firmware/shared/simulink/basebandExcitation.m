clear freqs0;
clear freqs1;
clear freqs_1;
clear freqs_0;
N=1024;
number_channels=2048;
num_lane=16;
valids = ones(1,number_channels/2);
%valids(1:64:number_channels/2)  = 1;
%valids(1)=1;
%valids         = bitrevorder(valids);
%idxRom         = find(valids == 1) - 1;
len_t=2^8;
freqs0 = zeros(number_channels/2, len_t);
freqs1 = zeros(number_channels/2, len_t);

t = 0:len_t-1;
for i = 1:number_channels/2
    if valids(i) == 1
        f=0.01*randn(1);%1/32;%normalized to band center frequency Fadc/64=4.8828MHz;
        %f=0;
        phase=0;
        freqs0(i, :) = exp(1j*2*pi.*(t*f+phase))*0.9;   
        f = 0.01*randn(1);
        %f=0;
%         phase = randn(1);
        freqs1(i, :) = exp(1j*2*pi*(t*f + phase))*0.9;
    end
end
freqs_0=reshape(freqs0(:),num_lane,len_t*number_channels/2/num_lane);
freqs_1=reshape(freqs1(:),num_lane,len_t*number_channels/2/num_lane);