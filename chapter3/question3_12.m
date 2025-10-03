xlin = linspace(1,100,100);
ylin = 20 * log10(2 * xlin);
xlog = logspace(0,2,100);
ylog = 20 * log10(2 * xlog);

tiledlayout(2,1);
nexttile;
semilogx(xlin,ylin,'-o',LineWidth=2,Color='blue',MarkerFaceColor='red',MarkerEdgeColor='red');
nexttile;
semilogx(xlog,ylog,'-*',LineWidth=2,Color='red',MarkerFaceColor='black',MarkerEdgeColor='black');
