% clear all;
img2=imread('test\BF-9.tif'); %insert the addres of the image you would like to process

hsize=19;   %these are the parameters of the Gaussian filtering. Read help for details
sigma=5;    % I put some default value here but feel free to change until best image is obtained
h=fspecial('gaussian',hsize,sigma);
% figure, surf(h); %if you uncomment this, it will plot the filter for you
outp=imfilter(img2,h);
 figure,imshow(outp);  %processed image
% saveas(gcf,'test\BF2.tif');
 %imcontrast(gca);      %contrast tool
 figure, imshow(img2); %original image for comparative purposes %%
