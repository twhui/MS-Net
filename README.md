# Caffe for MS-Net (Multi-scale Network)
This is the release of MS-Net (i.e. MSG-Net without RGB input) for the paper Depth Map Super-Resolution by Deep Multi-Scale Guidance in ECCV16. It comes with 4 trained networks (x2, x4, x8, x16) and 3 testing sets (A, B, C).

For more details, please visit the <a href="http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html">project page </a>.

# Dependency
The codes are based on <a href="https://github.com/BVLC/caffe">caffe</a> and Matlab.

# Installation and Running
You need to install <a href="https://github.com/BVLC/caffe">caffe</a> and remeber to complie matcaffe. You can put the folder <code>MSNet-release</code> in <code>caffe/examples</code>. Finally, you need to get into the the directory of <code>examples/MSNet-release</code>, and run <code>MSNet.m</code>. </li>

# License and Citation
All code is provided for research purposes only and without any warranty. Any commercial use requires our consent. When using the code in your research work, please cite the following paper:

"T.-W. Hui, C. C. Loy and X. Tang, Depth Map Super-Resolution by Deep Multi-Scale Guidance, pp. 353–369, ECCV16".
