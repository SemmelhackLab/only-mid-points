obj = VideoReader('E:\Ricky\2018\Feb\Feb 23\low density\strike\2nd_11_s_____1_811.avi');
vid = read(obj);
p = obj.NumberOfFrames;%total number of frames
% fname = 'E:\Ricky\2018\Mar\DT Mar 9\save\low-density experiment demo_01___3_9_11_32_25_570.avi.roi.detection.tif';
% info = imfinfo(fname);
% num_images = numel(info);
for k = 1:p
      
[xm(k), ym(k)]= dis2(vid(:,:,:,k));

end
xm =xm';
ym = ym';
po = [xm ym];