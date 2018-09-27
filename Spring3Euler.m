% David Akinyemi 28 June 2018% Coupled Oscillators % When given spring constants calculates frequency & position of both massesfunction [x,y,vx,vy,ax,ay] = Spring3Euler(x0,y0,vx0,vy0,k1,k2,k3,m,t,n)x = zeros(n+1,1); %Position1 solution vectory = zeros(n+1,1); %Position2 solution vectorvx = zeros(n+1,1); %Velocity1 solution vectorvy = zeros(n+1,1); %Velocity2 solution vectorax = zeros(n+1,1); %Acceleration1 solution vectoray = zeros(n+1,1); %Acceleration2 solution vectorh=t/n;x(1) = x0;y(1) = y0;vx(1) = vx0;vy(1) = vy0;for i = 1:n    ax(i) = ((-k1 - k2) * x(i) + (k2 * y(i)))/m;    ay(i) = ((-k3 * y(i)) - (k2 *(y(i) - x(i))))/m;    vx(i+1) = vx(i) +h*ax(i);    vy(i+1) = vy(i) +h*ay(i);    x(i+1) = x(i) + h*vx(i+1);    y(i+1) = y(i) + h*vy(i+1);        %plot(x,'ro','MarkerSize',2)    endforhold offz=0:h:t;%Plotfigure(8)plot(z,x,'k-',z,y,'r--')xlabel('Time'); ylabel('Output'); 