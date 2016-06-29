function displaycolumns(matrix, valrange)

if ~exist('valrange', 'var')
  valrange = [];
end

imsize = sqrt(size(matrix, 1));
num = min(size(matrix, 2), 100);
nfigrows = floor(sqrt(num));
nfigcols = ceil(num/nfigrows);

for i = 1:num
  subplot(nfigrows, nfigcols, i);
  img = reshape(matrix(:,i), imsize, imsize);
  imshow(img, valrange);
  axis off;
  title(sprintf('%d', i));
end
