X = 0:0.1:20;
Y = zeros(5,201);
for i=0:4
Y(i+1,:) = bessely(i,X);
end
figure('Position',[0 0 1024 768])
plot(X,Y,'LineWidth',1.5)
axis([-0.1 20.2 -2 0.6])
grid on;
legend('Y_0','Y_1','Y_2','Y_3','Y_4','Location','Best')
title('Bessel Functions of the Second Kind for n = 0,1,2,3,4')
xlabel('X')
ylabel('Y_n(X)')