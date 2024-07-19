clc
clear
format compact
correct_time = '';
time = input("please enter the time","s");
j=1;
for i=1:length(time)
    if(time(i)~=" ")
        correct_time(j) = time(i);
        j=j+1;
    end
end
clear i j time;
k = find(correct_time==':',1);
hrs = str2double(correct_time(1:k-1));
if(hrs>12)
    hrs=hrs-12;
    time_after_conversion =[num2str(hrs) correct_time(k:length(correct_time)) ' ' 'P' 'M']
elseif(hrs==0)
    time_after_conversion =[num2str(12) correct_time(k:length(correct_time)) ' ' 'A' 'M']
else
    time_after_conversion =[num2str(hrs) correct_time(k:length(correct_time)) ' ' 'A' 'M']
end

