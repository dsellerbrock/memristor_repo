data = load('New_Export.mat');
f = fieldnames(data);
for k=1:size(f,1)
       xlswrite('model.xlsx',data.(f{k}),f{k})
end