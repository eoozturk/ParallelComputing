

n=5000;
%%
% *BOLD TEXT*
x=zeros(1,n);
tic
for i=1:n
    x(i)=norm(inv(rand(200,200)));
end
fprintf('Tek: %8.2f\n', toc);

parpool('local',2)
tic
parfor i=1:n
    x(i)=norm(inv(rand(200,200)));
end
fprintf('Cift: %8.2f\n', toc);