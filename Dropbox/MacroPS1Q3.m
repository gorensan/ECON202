%a
for i=1:80
    z(:,i)=normrnd(0,1);
    I(:,i)=i;
end
plot (I,z)
%b
x(:,1)=z(:,1);
for i=2:80
    x(:,i)=z(:,i)+0.5*z(:,i-1);
end
plot (I,x)
ponse=zeros(1,80);
for i=1:2
    ponse(:,i)=0.5^(i-1);
end
plot (I, ponse)
%c
x(:,1)=z(:,1);
x(:,2)=z(:,2)+0.5*z(:,1);
for i=3:80
    x(:,i)=z(:,i)+0.5*z(:,i-1)+0.4*z(:,i-2);
end
plot (I,x)
ponse=zeros(1,80);
ponse(:,1)=1;
ponse(:,2)=0.5;
ponse(:,3)=0.4;
plot (I, ponse)
%d
x(:,1)=z(:,1);
for i=2:80
    x(:,i)=0.999*x(:,i-1)+z(:,i)-0.4*z(:,i-1);
end
plot (I,x)
ponse=zeros(1,80);
ponse(:,1)=1;
ponse(:,2)=0.999-0.4;
for i=3:80
    ponse(:,i)=0.999^(i-1)*0.5999;
end
plot (I, ponse)
%e
x(:,1)=z(:,1);
x(:,2)=0.8*x(:,1)+z(:,2)+0.5*z(:,1);
for i=3:80
    x(:,i)=0.8*x(:,i-1)+z(:,i)+0.5*z(:,i-1)+0.4*z(:,i-2);
end
plot (I,x)
ponse=zeros(1,80);
ponse(:,1)=1;
ponse(:,2)=0.8-0.5;
ponse(:,3)=0.8*0.4+0.5;
for i=4:80
    ponse(:,i)=0.999^(i-1)*0.5999;
end
plot (I, ponse)
