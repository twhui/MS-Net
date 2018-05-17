# MS-Net (Multi-scale Network)
This repository is the release of <strong>MS-Net</strong> for our paper <a href="http://personal.ie.cuhk.edu.hk/~ccloy/files/eccv_2016_depth.pdf"><strong>Depth Map Super-Resolution by Deep Multi-Scale Guidance </strong></a> in ECCV16. It comes with four trained networks (x2, x4, x8, and x16) one hole-filled RGBD training set, and three hole-filled RGBD testing sets (A, B, and C).

To the best of our knowledge, <strong>MS-Net</strong> is the <strong>FIRST convolution neural network</strong> which attempts to <i> upsample depth images</i>.

Another <a href="https://github.com/twhui/MSG-Net">repository </a> for <strong>MSG-Net</strong> (multi-scale guidance network) is also available.

For more details, please visit the <a href="http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html">project page </a>.

# Dependency
We train our models using <a href="https://github.com/BVLC/caffe">caffe</a> and evaluate the results on Matlab.

# Installation and Running
You need to install <a href="https://github.com/BVLC/caffe">caffe</a> and remeber to complie matcaffe. You can put the folder <code>MSNet-release</code> in <code>caffe/examples</code>. Finally, you need to get into the the directory of <code>examples/MSNet-release/util</code>, and run <code>MSNet.m</code>. </li>

# Training data
Please refer to <a href="https://github.com/twhui/MSG-Net">MSG-Net</a>.

# Testing data
Testig set is available <code>M/MSNet-release/testing sets</code>.

# License and Citation
All code is provided for research purposes only and without any warranty. Any commercial use requires our consent. If our work helps your research or you use the code in your research, please cite the following paper:
<pre><code>@InProceedings{hui2016,    
  author = {Tak-Wai Hui and Chen Change Loy and and Xiaoou Tang},    
  title  = {Depth Map Super-Resolution by Deep Multi-Scale Guidance},    
  booktitle  = {Proceedings of European Conference on Computer Vision (ECCV)},    
  pages = {353--369},  year = {2016},    
  url = {http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html}
 }
