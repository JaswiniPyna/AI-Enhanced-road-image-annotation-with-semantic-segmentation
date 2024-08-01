clc;
clear all;
close all;
pretrainedURL = "URL PATH";
pretrainedNetwork = fullfile("ResNetSemanticSegmenatation.mat"); 
data = load(pretrainedNetwork);
net = data.net;
lgraph = layerGraph(net);
lgraph = removeLayers(lgraph,lgraph.Layers(end).Name);
net = dlnetwork(lgraph);
img = imread("IMAGE PATH");
subplot(121);
imshow(img);
title('Input Image');
img = imresize(img,[720 960]);
classNames = camVidClassNames11;
cmap = camVidColorMap11;


X = dlarray(single(img), "SSCB");
Y = semanticseg(extractdata(X),net);
Z = labeloverlay(uint8(extractdata(X)),Y,ColorMap=cmap);
subplot(122);
imshow(Z)
pixelLabelColorbar(cmap,classNames);
title("Original Predicted Labels")


