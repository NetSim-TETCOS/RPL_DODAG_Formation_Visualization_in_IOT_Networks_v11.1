function PlotDAG(A,X,Y,H,nID,nRank)

G = digraph(A);
[~, n] = size(nRank);
N1 = cell(1,n);
for i=1:n
	if nRank(1,i) == 0
		N1(1,i) = cellstr(strcat('[',num2str(nID(1,i)),']'));
	else
		N1(1,i) = cellstr(strcat('[',num2str(nID(1,i)),' (Rank ',num2str(nRank(1,i)),')]'));
	end
end
nNames = N1';
G.Nodes.Name = nNames;
clf;
p= plot(G,'XDATA',X,'YDATA',Y);
set(gca,'xaxislocation','top','yaxislocation','left','ydir','reverse');
highlight(p,H,'NodeColor','r')

end