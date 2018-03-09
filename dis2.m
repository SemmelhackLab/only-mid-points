function [xm, ym]= dis2(N)
%N: the image
% xm: x coord of mid point between eyes
% ym: y coord of mid point between eyes





BB = im2bw(N, 0.25);
BB0 = ~BB;
BA = xor(bwareaopen(BB0,250),  bwareaopen(BB0,1000)); %eye: 350 to 400 %sw: <350
s = regionprops(BA,'centroid');
 centroids = cat(1, s.Centroid);
 centroids(isnan(centroids)) = [];
 [sa sb] = size(centroids);
 if sa > 2
     yce = centroids(:,2);
     yye = find(yce == max(yce));
     centroids(yye,:) = [];
 end
 
  % locate the 2 eyes and find mid point of eyes

 CE = centroids;
 
 xm = (CE(1,1) + CE(2,1))/2;
 ym = (CE(1,2) + CE(2,2))/2;
 

 %checking
 % figure; imshow(BB);hold on;plot(centroids(:,1),centroids(:,2),'*');
 % eye mid point
 
 % figure; imshow(N);hold on;plot(centroids2(:,1),centroids2(:,2),'*');%
 % paramecia
 
 %figure; imshow(N); hold on; plot(x,y0,'*');plot(x,centroids2(II,2),'*', 'color','r');
 % selecting centroids3 based on y coor

%(x,y0) obtain the line for selecting centroids3 (and thus c3)
%  x = [1:640];
% y0=[];
% for II = 1:640
%      %x = centroids2(II,1);
%      y0(II) = sl*(x(II)-xm) + ym;
%      
%  end

end


