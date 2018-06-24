# PrintStructurals

Function that takes a path to a structural MRI (sMRI) image and prints it to a .ps file. 

![Example MRI]('docs/Example.png');

## How do I Use This?

To print a single MRI scan, use the print_sMRI function. 
## print_sMRI
### Example 
* print_sMRI(‘image.nii’, ‘structural_scan’, ‘subject 1 - anat’, 0.20, 0.8) 

### Input 
* path to image - the path to the sMRI scan
* output file name - the name that you want the '.ps' file to have
* figure title - the title of the figure that you want to print, e.g. 'subject 1'
#### Optional
* bottom slice - the bottom slice as a proportion of the total number of slices, e.g. 0.2 will start the image montage 20% of the way through the image (default, 0.15)
* top slice - the top slice as a proportion of the total number of slices, e.g. 0.8 will end the image montage 80% of the way though the image (default, 0.85)
* You must set both parameters if you want to set one.

## Output 
* ‘.ps file’ with given name 



