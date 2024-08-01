function labelImage = convertCamVidLabelImage(image)

colorMap32 = camVidColorMap32;
map32To11 = cellfun(@(x,y)repmat(x,size(y,1),1), ...
    num2cell((1:numel(colorMap32))'), ...
    colorMap32, ...
    UniformOutput=false);

colorMap32 = cat(1,colorMap32{:});
map32To11 = cat(1,map32To11{:});

labelImage = rgb2ind(double(image)./255,colorMap32);
labelImage = map32To11(labelImage+1);
labelImage = categorical(labelImage,1:11,camVidClassNames11);

end