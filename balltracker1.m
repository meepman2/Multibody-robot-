%% Clear command window, Workspace and Figure-Window(s)
clear all;
clc;
clf;

%%
%1600*900


% axis equal;
f = figure;
% axis([-10000,10000,-3000,3000]);  
% set(gcf,'WindowButtonMotionFcn',@mouseMove1);
% 
% % To enlarge figure to full screen, use...
% % set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% % % Or...
% set(gcf, 'Position', get(0, 'Screensize'));
% 
% grid;
% hold on;
% plot(0,0,'r*');
% 
% % loc = get(gca, 'CurrentPoint');
% % plot(loc(1,1), loc(1,2), 'r.', 'markersize', 8);;
% 
 n=1000; % no. of samples of cursor points 
 M=zeros(n,2);   % initialize the Array 'M" to zeros. This array is used to store all cursor points within the sampling time  
% % First column for X coordn and second column for Y-coordn of pointer!!
while(1)
axis([-10000,10000,-3000,3000]);  
set(gcf,'WindowButtonMotionFcn',@mouseMove1);

% To enlarge figure to full screen, use...
% set(gcf, 'units','normalized','outerposition',[0 0 1 1]);
% % Or...
set(gcf, 'Position', get(0, 'Screensize'));

grid;
hold on;
plot(0,0,'r*');

% loc = get(gca, 'CurrentPoint');
% plot(loc(1,1), loc(1,2), 'r.', 'markersize', 8);;

% n=1000; % no. of samples of cursor points 
% M=zeros(n,2);   % initialize the Array 'M" to zeros. This array is used to store all cursor points within the sampling time  
% First column for X coordn and second column for Y-coordn of pointer!!


      for i=1:length(M) 
          loc = get(gca, 'CurrentPoint');
          M(i,1)=loc(1,1);
          M(i,2)=loc(1,2);
          plot(loc(1,1), loc(1,2), 'b.', 'markersize', 10);
          set(f, 'WindowButtonMotionFcn', @(obj, event)cursorLocation(obj, event, 'BottomRight', ' X: %.3f\n Y: %.3f', 'r'))     
          pause(.02);
          
      end
 
i = 0;
clf;
end