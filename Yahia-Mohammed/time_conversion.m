clc
clear
time = input('Please enter the current time','s')
Flag_first_colon = find(time==':',1)-1;
if(str2double(time(1:Flag_first_colon))>12)
    time_converted= [num2str(str2double(time(1:Flag_first_colon))-12)...
        time(Flag_first_colon+1:length(time)) ' PM']
elseif(str2double(time(1:Flag_first_colon))==12)
    time_converted= [num2str(str2double(time(1:Flag_first_colon)))...
        time(Flag_first_colon+1:length(time)) ' PM']
else
    if(str2double(time(1:Flag_first_colon))==0)
     time_converted= ['12' time(Flag_first_colon+1:length(time)) ' AM']
    else
         time_converted= [num2str(str2double(time(1:Flag_first_colon)))...
        time(Flag_first_colon+1:length(time)) ' AM']
    end
end