clc
clear
%% time='20:30:35'
time =input("please ,enter the time:","s")
hours=0;
hours_index = find(time ==':',1)-1;
if(time(1:hours_index)=='0') %%clock=12am
    time_conversion=['12' time(hours_index +1 :length(time)) 'am']
elseif (time(1:hours_index) == '12')  %%clock=12pm
time_conversion=['12' time(hours_index +1 :length(time)) 'pm']
elseif( time(1:hours_index) > 12) %%clock=pm
hours=str2double(time(1:hours_index)) -12
time_conversion=[num2str(hours) time(hours_index +1 :length(time)) 'pm']
else %%clock=am
time_conversion=[time(1:length(time)) 'am' ]
end 
time_conversion
