function print_sMRI(image, out_name, fig_name, bottom, top)
if nargin<4
   bottom = 0.15;
   top = 0.85;
end
addpath(genpath([get_containing_folder filesep 'tools']))
im_hdr = load_untouch_nii(image); 
tf = affine3d([-1 0 0 0; 0 -1 0 0; 0 0 1 0; 0 0 0 1]);
im = imwarp(im_hdr.img,tf);
im = permute(im, [2,1,3]);

im_size = size(im);
rs_im = uint8(reshape(im, [im_size(1), im_size(2), 1, im_size(3)]));
plot_ind = linspace(round(im_size(3)*bottom), round(im_size(3)*top), 9);
f = figure('pos',[10 10 500 500]);set(gcf,'Visible', 'off'); 
montage(rs_im(:, :, :, round(plot_ind)), 'Size', [3,3]);
title(fig_name);
print(out_name, '-dps', '-append');
clf(f);
end

function f= get_containing_folder()
filepath = mfilename('fullpath');
f = fileparts(filepath);
end