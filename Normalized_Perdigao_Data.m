% Dustin (Ting-Hsuan) Ma
% HiPerSimLab - Perdigao Data Comparison

clear all; close all; clc;

%% Importing, Converting, and Extracting (Data)


tower17_10 = importdata('./CleanerData/tower17_10m.csv');
tower17_30 = importdata('./CleanerData/tower17_30m.csv');
tower17_10 = tower17_10.data; tower17_30 = tower17_30.data;

tower18_30 = importdata('./CleanerData/tower18_30m.csv');
tower18_30 = tower18_30.data;

tower26_30 = importdata('./CleanerData/tower26_30m.csv');
tower26_30 = tower26_30.data;

tower20_10 = importdata('./CleanerData/tower20_10m.csv');
tower20_20 = importdata('./CleanerData/tower20_20m.csv');
tower20_40 = importdata('./CleanerData/tower20_40m.csv');
tower20_80 = importdata('./CleanerData/tower20_80m.csv');
tower20_100 = importdata('./CleanerData/tower20_100m.csv');
tower20_10 = tower20_10.data; tower20_20 = tower20_20.data;
tower20_40 = tower20_40.data; tower20_80 = tower20_80.data;
tower20_100 = tower20_100.data;

tower25_10 = importdata('./CleanerData/tower25_10m.csv');
tower25_20 = importdata('./CleanerData/tower25_20m.csv');
tower25_40 = importdata('./CleanerData/tower25_40m.csv');
tower25_80 = importdata('./CleanerData/tower25_80m.csv');
tower25_100 = importdata('./CleanerData/tower25_100m.csv');
tower25_10 = tower25_10.data; tower25_20 = tower25_20.data;
tower25_40 = tower25_40.data; tower25_80 = tower25_80.data;
tower25_100 = tower25_100.data;

tower29_10 = importdata('./CleanerData/tower29_10m.csv');
tower29_20 = importdata('./CleanerData/tower29_20m.csv');
tower29_80 = importdata('./CleanerData/tower29_80m.csv');
tower29_100 = importdata('./CleanerData/tower29_100m.csv');
tower29_10 = tower29_10.data; tower29_20 = tower29_20.data;
tower29_80 = tower29_80.data; tower29_100 = tower29_100.data;

j = 1;
for i = 314:324
    t17_10(j,:) = tower17_10(i,7:18);
    t17_30(j,:) = tower17_30(i,7:18);
    
    t18_30(j,:) = tower18_30(i,7:18);
    t26_30(j,:) = tower26_30(i,7:18);
    
    t20_10(j,:) = tower20_10(i,7:18);
    t20_20(j,:) = tower20_20(i,7:18);
    t20_40(j,:) = tower20_40(i,7:18);
    t20_80(j,:) = tower20_80(i,7:18);
    t20_100(j,:) = tower20_100(i,7:18);
    
    t25_10(j,:) = tower25_10(i,7:18);
    t25_20(j,:) = tower25_20(i,7:18);
    t25_40(j,:) = tower25_40(i,7:18);
    t25_80(j,:) = tower25_80(i,7:18);
    t25_100(j,:) = tower25_100(i,7:18);
    
    t29_10(j,:) = tower29_10(i,7:18);
    t29_20(j,:) = tower29_20(i,7:18);
    t29_80(j,:) = tower29_80(i,7:18);
    t29_100(j,:) = tower29_100(i,7:18);
    j = j+1;
end

%% Averaging Velocity (Data)
Avg17_10 = mean(t17_10(:,2)); Avg17_30 = mean(t17_30(:,2));

Avg18_30 = mean(t18_30(:,2));
Avg26_30 = mean(t26_30(:,2));

Avg20_10 = mean(t20_10(:,2)); Avg20_20 = mean(t20_20(:,2));
Avg20_40 = mean(t20_40(:,2)); Avg20_80 = mean(t20_80(:,2));
Avg20_100 = mean(t20_100(:,2));

Avg25_10 = mean(t25_10(:,2)); Avg25_20 = mean(t25_20(:,2));
Avg25_40 = mean(t25_40(:,2)); Avg25_80 = mean(t25_80(:,2));
Avg25_100 = mean(t25_100(:,2));

Avg29_10 = mean(t29_10(:,2)); Avg29_20 = mean(t29_20(:,2));
Avg29_80 = mean(t29_80(:,2)); Avg29_100 = mean(t29_100(:,2));

%% Standard Deviation for Error Bar

% T17
err17_10 = std(t17_10(:,2),1); err17_30 = std(t17_30(:,2),1);

% T18
err18_30 = std(t18_30(:,2),1);

% T26
err26_30 = std(t26_30(:,2),1);

% T20
err20_10 = std(t20_10(:,2),1); err20_20 = std(t20_20(:,2),1);
err20_40 = std(t20_40(:,2),1); err20_80 = std(t20_80(:,2),1);
err20_100 = std(t20_100(:,2),1);

% T25
err25_10 = std(t25_10(:,2),1); err25_20 = std(t25_20(:,2),1);
err25_40 = std(t25_40(:,2),1); err25_80 = std(t25_80(:,2),1);
err25_100 = std(t25_100(:,2),1);

% T29
err29_10 = std(t29_10(:,2),1); err29_20 = std(t29_20(:,2),1);
err29_80 = std(t29_80(:,2),1); err29_100 = std(t29_100(:,2),1);

% Error at each tower put into an array
err17 = [err17_10 err17_30];
err18 = [err18_30];
err26 = [err26_30];
err20 = [err20_10 err20_20 err20_40 err20_80 err20_100];
err25 = [err25_10 err25_20 err25_40 err25_80 err25_100];
err29 = [err29_10 err29_20 err29_80 err29_100];

%% Average Turbulence (Data)

% %Mean U
% Avg17U_10 = mean(t17_10(:,4)); Avg17U_30 = mean(t17_30(:,4));
% Avg18U_30 = mean(t18_30(:,7));
% Avg26U_30 = mean(t26_30(:,7));
% Avg20U_10 = mean(t20_10(:,7)); Avg20UU_20 = mean(t20_20(:,7));
% Avg20U_40 = mean(t20_40(:,7)); Avg20UU_80 = mean(t20_80(:,7));
% Avg20U_100 = mean(t20_100(:,7));
% Avg25U_10 = mean(t20_10(:,7)); Avg25UU_20 = mean(t20_20(:,7));
% Avg25U_40 = mean(t20_40(:,7)); Avg25UU_80 = mean(t20_80(:,7));
% Avg25U_100 = mean(t20_100(:,7));
% Avg29U_10 = mean(t20_10(:,7)); Avg29UU_20 = mean(t20_20(:,7));
% Avg29U_80 = mean(t20_80(:,7)); Avg29UU_100 = mean(t20_100(:,7));
% 
% % UU
% Avg17UU_10 = mean(t17_10(:,7)); Avg17UU_30 = mean(t17_30(:,7));
% Avg18UU_30 = mean(t18_30(:,7));
% Avg26UU_30 = mean(t26_30(:,7));
% Avg20UU_10 = mean(t20_10(:,7)); Avg20UU_20 = mean(t20_20(:,7));
% Avg20UU_40 = mean(t20_40(:,7)); Avg20UU_80 = mean(t20_80(:,7));
% Avg20UU_100 = mean(t20_100(:,7));
% Avg25UU_10 = mean(t20_10(:,7)); Avg25UU_20 = mean(t20_20(:,7));
% Avg25UU_40 = mean(t20_40(:,7)); Avg25UU_80 = mean(t20_80(:,7));
% Avg25UU_100 = mean(t20_100(:,7));
% Avg29UU_10 = mean(t20_10(:,7)); Avg29UU_20 = mean(t20_20(:,7));
% Avg29UU_80 = mean(t20_80(:,7)); Avg29UU_100 = mean(t20_100(:,7));
% 
% Avg17UU = [Avg17UU_10 Avg17UU_30];
% Avg20UU = [Avg20UU_10 Avg20UU_20 Avg20UU_40 Avg20UU_80 Avg20UU_100];
% Avg25UU = [Avg25UU_10 AvgGIN3Dref = location20.data(index20_40,Dataindex(1));  % setting Simulation Data Uref
% Avg29UU = [Avg29UU_10 Avg25UU_20 Avg29UU_80 Avg29UU_100];
%
% % VV
% Avg17VV_10 = mean(t17_10(:,8)); Avg17VV_30 = mean(t17_30(:,8));
% Avg18VV_30 = mean(t18_30(:,8));
% Avg26VV_30 = mean(t26_30(:,8));
% Avg20VV_10 = mean(t20_10(:,8)); Avg20VV_20 = mean(t20_20(:,8));
% Avg20VV_40 = mean(t20_40(:,8)); Avg20VV_80 = mean(t20_80(:,8));
% Avg20VV_100 = mean(t20_100(:,8));
% Avg25VV_10 = mean(t20_10(:,8)); Avg25VV_20 = mean(t20_20(:,8));
% Avg25VV_40 = mean(t20_40(:,8)); Avg25VV_80 = mean(t20_80(:,8));
% Avg25VV_100 = mean(t20_100(:,8));
% Avg29VV_10 = mean(t20_10(:,8)); Avg29VV_20 = mean(t20_20(:,8));
% Avg29VV_80 = mean(t20_80(:,8)); Avg29VV_100 = mean(t20_100(:,8));
%
% Avg17VV = [Avg17VV_10 Avg17VV_30];
% Avg20VV = [Avg20VV_10 Avg20VV_20 Avg20VV_40 Avg20VV_80 Avg20VV_100];
% Avg25VV = [Avg25VV_10 Avg25VV_20 Avg25VV_40 Avg25VV_80 Avg25VV_100];
% Avg29VV = [Avg29VV_10 Avg25VV_20 Avg29VV_80 Avg29VV_100];
%
% % WW
% Avg17WW_10 = mean(t17_10(:,9)); Avg17WW_30 = mean(t17_30(:,8));
% Avg18WW_30 = mean(t18_30(:,9));
% Avg26WW_30 = mean(t26_30(:,9));
% Avg20WW_10 = mean(t20_10(:,9)); Avg20WW_20 = mean(t20_20(:,9));
% Avg20WW_40 = mean(t20_40(:,9)); Avg20WW_80 = mean(t20_80(:,9));
% Avg20WW_100 = mean(t20_100(:,9));
% Avg25WW_10 = mean(t20_10(:,9)); Avg25WW_20 = mean(t20_20(:,9));
% Avg25WW_40 = mean(t20_40(:,9)); Avg25WW_80 = mean(t20_80(:,9));
% Avg25WW_100 = mean(t20_100(:,9));
% Avg29WW_10 = mean(t20_10(:,9)); Avg29WW_20 = mean(t20_20(:,9));
% Avg29WW_80 = mean(t20_80(:,9)); Avg29WW_100 = mean(t20_100(:,9));

% Avg17WW = [Avg17WW_10 Avg17WW_30];
% Avg20WW = [Avg20WW_10 Avg20WW_20 Avg20WW_40 Avg20WW_80 Avg20WW_100];
% Avg25WW = [Avg25WW_10 Avg25WW_20 Avg25WW_40 Avg25WW_80 Avg25WW_100];
% Avg29WW = [Avg29WW_10 Avg25WW_20 Avg29WW_80 Avg29WW_100];
%
% % UV
% Avg17UV_10 = mean(t17_10(:,10)); Avg17UV_30 = mean(t17_30(:,10));
% Avg18UV_30 = mean(t18_30(:,10));
% Avg26UV_30 = mean(t26_30(:,10));
% Avg20UV_10 = mean(t20_10(:,10)); Avg20UV_20 = mean(t20_20(:,10));
% Avg20UV_40 = mean(t20_40(:,10)); Avg20UV_80 = mean(t20_80(:,10));
% Avg20UV_100 = mean(t20_100(:,10));
% Avg25UV_10 = mean(t20_10(:,10)); Avg25UV_20 = mean(t20_20(:,10));
% Avg25UV_40 = mean(t20_40(:,10)); Avg25UV_80 = mean(t20_80(:,10));
% Avg25UV_100 = mean(t20_100(:,10));
% Avg29UV_10 = mean(t20_10(:,10)); Avg29UV_20 = mean(t20_20(:,10));
% Avg29UV_80 = mean(t20_80(:,10)); Avg29UV_100 = mean(t20_100(:,10));
%
% Avg17UV = [Avg17UV_10 Avg17UV_30];
% Avg20UV = [Avg20UV_10 Avg20UV_20 Avg20UV_40 Avg20UV_80 Avg20UV_100];
% Avg25UV = [Avg25UV_10 Avg25UV_20 Avg25UV_40 Avg25UV_80 Avg25UV_100];
% Avg29UV = [Avg29UV_10 Avg25UV_20 Avg29UV_80 Avg29UV_100];

% % UW
% Avg17UW_10 = mean(t17_10(:,11)); Avg17UW_30 = mean(t17_30(:,11));
% Avg18UW_30 = mean(t18_30(:,11));
% Avg26UW_30 = mean(t26_30(:,11));
% Avg20UW_10 = mean(t20_10(:,11)); Avg20UW_20 = mean(t20_20(:,11));
% Avg20UW_40 = mean(t20_40(:,11)); Avg20UW_80 = mean(t20_80(:,11));
% Avg20UW_100 = mean(t20_100(:,11));
% Avg25UW_10 = mean(t20_10(:,11)); Avg25UW_20 = mean(t20_20(:,11));
% Avg25UW_40 = mean(t20_40(:,11)); Avg25UW_80 = mean(t20_80(:,11));
% Avg25UW_100 = mean(t20_100(:,11));
% Avg29UW_10 = mean(t20_10(:,11)); Avg29UW_20 = mean(t20_20(:,11));
% Avg29UW_80 = mean(t20_80(:,11)); Avg29UW_100 = mean(t20_100(:,11));
%
% Avg17UW = [Avg17UW_10 Avg17UW_30];
% Avg20UW = [Avg20UW_10 Avg20UW_20 Avg20UW_40 Avg20UW_80 Avg20UW_100];
% Avg25UW = [Avg25UW_10 Avg25UW_20 Avg25UW_40 Avg25UW_80 Avg25UW_100];
% Avg29UW = [Avg29UW_10 Avg25UW_20 Avg29UW_80 Avg29UW_100];

% %VW
% Avg17VW_10 = mean(t17_10(:,12)); Avg17VW_30 = mean(t17_30(:,12));
% Avg18VW_30 = mean(t18_30(:,12));
% Avg26VW_30 = mean(t26_30(:,12));
% Avg20VW_10 = mean(t20_10(:,12)); Avg20VW_20 = mean(t20_20(:,12));
% Avg20VW_40 = mean(t20_40(:,12)); Avg20VW_80 = mean(t20_80(:,12));
% Avg20VW_100 = mean(t20_100(:,12));
% Avg25VW_10 = mean(t20_10(:,12)); Avg25VW_20 = mean(t20_20(:,11));
% Avg25VW_40 = mean(t20_40(:,12)); Avg25VW_80 = mean(t20_80(:,12));
% Avg25VW_100 = mean(t20_100(:,12));
% Avg29VW_10 = mean(t20_10(:,12)); Avg29VW_20 = mean(t20_20(:,12));
% Avg29VW_80 = mean(t20_80(:,12)); Avg29VW_100 = mean(t20_100(:,12));
%
% Avg17VW = [Avg17VW_10 Avg17VW_30];
% Avg20VW = [Avg20VW_10 Avg20VW_20 Avg20VW_40 Avg20VW_80 Avg20VW_100];
% Avg25VW = [Avg25VW_10 Avg25VW_20 Avg25VW_40 Avg25VW_80 Avg25VW_100];
% Avg29VW = [Avg29VW_10 Avg25VW_20 Avg29VW_80 Avg29VW_100];

%% Calculating 2nd Order Stats (EXPERIMENTAL)

% T17
MeanUU17_10 = mean(t17_10(:,7));
MeanUU17_30 = mean(t17_30(:,7));
errUU17_10 = std(t17_10(:,7),1);
errUU17_30 = std(t17_30(:,7),1);

errUU17 = [errUU17_10 errUU17_30];

% T18
MeanUU18_30 = mean(t18_30(:,7));
errUU18_30 = std(t18_30(:,7),1);

errUU18 = [errUU18_30];

% T26
MeanUU26_30 = mean(t26_30(:,7));
errUU26_30 = std(t26_30(:,7),1);

errUU26 = [errUU26_30];

% T20
MeanUU20_10 = mean(t20_10(:,7));
MeanUU20_20 = mean(t20_20(:,7));
MeanUU20_40 = mean(t20_40(:,7));
MeanUU20_80 = mean(t20_80(:,7));
MeanUU20_100 = mean(t20_100(:,7));
errUU20_10 = std(t20_10(:,7),1);
errUU20_20 = std(t20_20(:,7),1);
errUU20_40 = std(t20_40(:,7),1);
errUU20_80 = std(t20_80(:,7),1);
errUU20_100 = std(t20_100(:,7),1);

errUU20 = [errUU20_10 errUU20_20 errUU20_40 errUU20_80 errUU20_100];

% T25
MeanUU25_10 = mean(t25_10(:,7));
MeanUU25_20 = mean(t25_20(:,7));
MeanUU25_40 = mean(t25_40(:,7));
MeanUU25_80 = mean(t25_80(:,7));
MeanUU25_100 = mean(t25_100(:,7));
errUU25_10 = std(t25_10(:,7),1);
errUU25_20 = std(t25_20(:,7),1);
errUU25_40 = std(t25_40(:,7),1);
errUU25_80 = std(t25_80(:,7),1);
errUU25_100 = std(t25_100(:,7),1);

errUU25 = [errUU25_10 errUU25_20 errUU25_40 errUU25_80 errUU25_100];

% T29
MeanUU29_10 = mean(t29_10(:,7));
MeanUU29_20 = mean(t29_20(:,7));
MeanUU29_80 = mean(t29_80(:,7));
MeanUU29_100 = mean(t29_100(:,7));
errUU29_10 = std(t29_10(:,7),1);
errUU29_20 = std(t29_20(:,7),1);
errUU29_80 = std(t29_80(:,7),1);
errUU29_100 = std(t29_100(:,7),1);

errUU29 = [errUU29_10 errUU29_20 errUU29_80 errUU29_100];

%% Importing Simulation Data

location17 = importdata('./Mar18_449x257x257_Damping/Location17_GIN3D.csv');
location18 = importdata('./Mar18_449x257x257_Damping/Location18_GIN3D.csv');
location20 = importdata('./Mar18_449x257x257_Damping/Location20_GIN3D.csv');
location25 = importdata('./Mar18_449x257x257_Damping/Location25_GIN3D.csv');
location26 = importdata('./Mar18_449x257x257_Damping/Location26_GIN3D.csv');
location29 = importdata('./Mar18_449x257x257_Damping/Location29_GIN3D.csv');

%% Normalizing
Elevation17 = 215;
Dataindex = [18 20 3 7 10 4 8 11 5 6 9];

k = 1;
for i = 1:1001
    if location20.data(i,Dataindex(2)) <= (468 + 40) % for tower 20 40m above ground
        index20_40 = k;
        k = k + 1;
    end
end

NORMALIZE = 1; % Normalize Data or no?
TURBq = 0;     % Graph Turbulent Quantities?


if NORMALIZE == 1
    GIN3Dref = location20.data(index20_40,Dataindex(1));  % setting Simulation Data Uref
    %Fieldref = GIN3Dref;
    Fieldref = Avg20_40;
else
    GIN3Dref = 1;
    Fieldref = 1;
end

err17 = err17/Fieldref;
err18 = err18/Fieldref;
err26 = err26/Fieldref;
err20 = err20/Fieldref;
err25 = err25/Fieldref;
err29 = err29/Fieldref;

%% Importing Paraview Points Tower 17

Elevation17 = 215;
for i = 1:1001
    if location17.data(i,Dataindex(2)) < Elevation17 - 1
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data17(j-Hindex+1,i) = location17.data(j,Dataindex(i));
    end
end

% Location 17, velocity Profile
figure();
plot(data17(:,1)/GIN3Dref,data17(:,2),'LineWidth',2)
title('Tower 17')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x17 = [Avg17_10 Avg17_30]/Fieldref; % normalizing by mean wind speed @ tower17_30
y17 = [Elevation17+10 Elevation17+30];
hold on
for i = 1:numel(x17)
    errorbar(x17(i),y17(i),err17(i),'horizontal','x','LineWidth',2)
end
legend('GIN3D','10m','30m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ -0.5 1 Elevation17 650])
end
ylim([Elevation17 650])
movegui('northwest')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data17(:,6) - (data17(:,3)).^2; % Mean UU - Mean U ^2
    % x2 = data17(:,11) - (data17(:,4).*data17(:,5)); % Mean VW - Mean V * Mean W
    % x3 = data17(:,10) - (data17(:,3).*data17(:,5)); % Mean UW - Mean U * Mean W
    
    xUU17 = [MeanUU17_10 MeanUU17_30];
    figure();
    plot(x1,data17(:,2),'LineWidth',2)
    hold on
    %Experimental Points
    for i = 1:numel(xUU17)
        errorbar(xUU17(i),y17(i),errUU17(i),'horizontal','x','LineWidth',2)
    end
    hold off
    title("Tower 17 < U' >")
    xlabel('Mean UU - Mean U ^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','10m','30m','Location','northeast')
    axis([ 0 3.5 Elevation17 650])
    movegui('northwest')
end

%% Importing Paraview Points Tower 18

Elevation18 = 380;
for i = 1:1001
    if location18.data(i,Dataindex(2)) < Elevation18 -1
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data18(j-Hindex+1,i) = location18.data(j,Dataindex(i));
    end
end

% Location 18, velocity Profile
figure();
plot(data18(:,1)/GIN3Dref,data18(:,2),'LineWidth',2)
title('Tower 18')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x18 = [Avg18_30]/Fieldref; % normalizing by mean wind speed @ tower17_30
y18 = [Elevation18+30];
hold on
errorbar(x18,y18,err18,'horizontal','x','LineWidth',2)
legend('GIN3D','30m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ 0.2 1.2 Elevation18 650])
end
ylim([Elevation18 650])
movegui('north')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data18(:,6) - (data18(:,3)).^2; % Mean UU - Mean U ^2
    xUU18 = [MeanUU18_30];
    figure();
    plot(x1,data18(:,2),'LineWidth',2)
    hold on
    % Experimental Points
    errorbar(xUU18,y18,errUU18,'horizontal','x','LineWidth',2)
    hold off
    title("Tower 18 < U' >")
    xlabel('Mean UU - Mean U ^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','30m','Location','northeast')
    axis([ 0 11 Elevation18 650])
    movegui('north')
end

%% Importing Paraview Points Tower 20

Elevation20 = 468;
for i = 1:1001
    if location20.data(i,Dataindex(2)) < Elevation20 -1
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data20(j-Hindex+1,i) = location20.data(j,Dataindex(i));
    end
end

% Location 20, velocity Profile
figure();
plot(data20(:,1)/GIN3Dref,data20(:,2),'LineWidth',2)
title('Tower 20')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x20 = [Avg20_10 Avg20_20 Avg20_40 Avg20_80 Avg20_100]/Fieldref;    % normalizing by mean wind speed @ tower17_30
y20 = [Elevation20+10 Elevation20+20 Elevation20+40 Elevation20+80 Elevation20+100];
hold on
for i = 1:numel(x20)
    errorbar(x20(i),y20(i),err20(i),'horizontal','x','LineWidth',2)
end
legend('GIN3D','10m','20m','40m','80m','100m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ 0.2 1.2 Elevation20 650])
end
ylim([Elevation20 650])
movegui('southwest')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data20(:,6) - (data20(:,3)).^2; % Mean UU - Mean U ^2
    xUU20 = [MeanUU20_10 MeanUU20_20 MeanUU20_40 MeanUU20_80 MeanUU20_100];
    figure();
    plot(x1,data20(:,2),'LineWidth',2)
    hold on
    % Experimental Points
    for i = 1:numel(xUU20)
        errorbar(xUU20(i),y20(i),errUU20(i),'horizontal','x','LineWidth',2)
    end
    hold off
    title("Tower 20 < U' >")
    xlabel('Mean UU - Mean U ^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','10m','20m','40m','80m','100m','Location','northeast')
    axis([ -5 35 Elevation20 650])
    movegui('southwest')
end

%% Importing Paraview Points Tower 25

Elevation25 = 312.5;
for i = 1:1001
    if location25.data(i,Dataindex(2)) < Elevation25
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data25(j-Hindex+1,i) = location25.data(j,Dataindex(i));
    end
end

% Location 25, velocity Profile
figure();
plot(data25(:,1)/GIN3Dref,data25(:,2),'LineWidth',2)
title('Tower 25')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x25 = [Avg25_10 Avg25_20 Avg25_40 Avg25_80 Avg25_100]/Fieldref;    % normalizing by mean wind speed @ tower17_30
y25 = [Elevation25+10 Elevation25+20  Elevation25+40 Elevation25+80 Elevation25+100];
hold on
for i = 1:numel(x25)
    errorbar(x25(i),y25(i),err25(i),'horizontal','x','LineWidth',2)
end
legend('GIN3D','10m','20m','40m','80m','100m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ -0.5 1.5 Elevation25 650])
end
ylim([Elevation25 650])
movegui('south')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data25(:,6) - (data25(:,3)).^2; % Mean UU - Mean U ^2
    xUU25 = [MeanUU25_10 MeanUU25_20 MeanUU25_40 MeanUU25_80 MeanUU25_100];
    figure();
    plot(x1,data25(:,2),'LineWidth',2)
    hold on
    % Experimental Points
    for i = 1:numel(xUU25)
        errorbar(xUU25(i),y25(i),errUU25(i),'horizontal','x','LineWidth',2)
    end
    hold off
    title("Tower 25 < U' >")
    xlabel('Mean UU - Mean U^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','10m','20m','40m','80m','100m','Location','northeast')
    axis([ 0 7.5 Elevation25 650])
    movegui('south')
end

%% Importing Paraview Points Tower 26

Elevation26 = 350;
for i = 1:1001
    if location26.data(i,Dataindex(2)) < Elevation26
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data26(j-Hindex+1,i) = location26.data(j,Dataindex(i));
    end
end

% Location 26, velocity Profile
figure();
plot(data26(:,1)/GIN3Dref,data26(:,2),'LineWidth',2)
title('Tower 26')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x26 = [Avg26_30]/Fieldref;    % normalizing by mean wind speed @ tower17_30
y26 = [Elevation26+30];
hold on
for i = 1:numel(x26)
    errorbar(x26(i),y26(i),err26(i),'horizontal','x','LineWidth',2)
end
legend('GIN3D','30m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ 0 1.2 Elevation26 650])
end
ylim([Elevation26 650])
movegui('northeast')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data26(:,6) - (data26(:,3)).^2; % Mean UU - Mean U ^2
    xUU26 = [MeanUU26_30];
    figure();
    plot(x1,data26(:,2),'LineWidth',2)
    hold on
    % Experimental Points
    errorbar(xUU26,y26,errUU26,'horizontal','x','LineWidth',2)
    title("Tower 26 < U' >")
    xlabel('Mean UU - Mean U ^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','30m','Location','northeast')
    axis([ 0 5 Elevation26 650])
    movegui('northeast')
end

%% Importing Paraview Points Tower 29

Elevation29 = 452;
for i = 1:1001
    if location29.data(i,Dataindex(2)) < Elevation29 -1
        Hindex = i;
    end
end

for i = 1:numel(Dataindex)
    for j = Hindex:1001
        data29(j-Hindex+1,i) = location29.data(j,Dataindex(i));
    end
end

% Location 20, velocity Profile
figure();
plot(data29(:,1)/GIN3Dref,data29(:,2),'LineWidth',2)
title('Tower 29')
xlabel('Normalized wind speed')
ylabel('Sea Level [m]')
x29 = [Avg29_10 Avg29_20 Avg29_80 Avg29_100]/Fieldref;    % normalizing by mean wind speed @ tower17_30
y29 = [Elevation29+10 Elevation29+20  Elevation29+80 Elevation29+100];
hold on
for i = 1:numel(x29)
    errorbar(x29(i),y29(i),err29(i),'horizontal','x','LineWidth',2)
end
legend('GIN3D','10m','20m','80m','100m','Location','northwest')
hold off
if NORMALIZE == 1
    axis([ 0 1.2 Elevation29 650])
end
ylim([Elevation29 650])
movegui('southeast')

if TURBq == 1
    % Plotting Turbulence Quantities
    x1 = data29(:,6) - (data29(:,3)).^2; % Mean UU - Mean U ^2
    xUU29 = [MeanUU29_10 MeanUU29_20 MeanUU29_80 MeanUU29_100];
    figure();
    plot(x1,data29(:,2),'LineWidth',2)
    hold on
    % Experimental Points
    for i = 1:numel(xUU29)
        errorbar(xUU29(i),y29(i),errUU29(i),'horizontal','x','LineWidth',2)
    end
    hold off
    title("Tower 29 < U' >")
    xlabel('Mean UU - Mean U ^2')
    ylabel('Sea Level [m]')
    legend('GIN3D','10m','20m','80m','100m','Location','northeast')
    axis([ 0 17 Elevation29 650])
    movegui('southeast')
end
