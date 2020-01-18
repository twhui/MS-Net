# MS-Net (Multi-scale network)
This repository (<strong>https://github.com/twhui/MS-Net</strong>) is the offical release of <strong>MS-Net</strong> for our paper <a href="http://personal.ie.cuhk.edu.hk/~ccloy/files/eccv_2016_depth.pdf"><strong>Depth Map Super-Resolution by Deep Multi-Scale Guidance </strong></a> in ECCV16. It comes with four trained networks (x2, x4, x8, and x16) one hole-filled RGBD training set, and three hole-filled RGBD testing sets (A, B, and C).

<strong>To the best of our knowledge, MS-Net is the <strong>FIRST convolution neural network</strong> which attempts to <i> upsample depth images</i></strong>.

Another <a href="https://github.com/twhui/MSG-Net"><strong>repository</strong> </a> for <strong>MSG-Net</strong> (multi-scale guidance network) is also available.

For more details, please visit <a href="http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html"><strong>my project page</strong></a>.

# License and Citation
This software and associated documentation files (the "Software"), and the research paper (Depth Map Super-Resolution by Deep Multi-Scale Guidance) including but not limited to the figures, and tables (the "Paper") are provided for research purposes only and without any warranty. Any commercial use requires my consent. When using any parts of the Software or the Paper in your work, please cite the following paper

<pre><code>@InProceedings{hui16msgnet,    
 author = {Tak-Wai Hui and Chen Change Loy and and Xiaoou Tang},    
 title  = {Depth Map Super-Resolution by Deep Multi-Scale Guidance},    
 booktitle  = {Proceedings of European Conference on Computer Vision (ECCV)},    
 pages = {353--369},  
 year = {2016},    
 url = {http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html}
}</code></pre>

# Dependency
We train our models using <a href="https://github.com/BVLC/caffe">caffe</a> and evaluate the results on Matlab.

# Installation and Running
You need to install <a href="https://github.com/BVLC/caffe">caffe</a> and remeber to complie matcaffe. You can put the folder <code>MSNet-release</code> in <code>caffe/examples</code>. Finally, you need to get into the the directory of <code>examples/MSNet-release/util</code>, and run <code>MSNet.m</code>. </li>

# Training data
Please refer to <a href="https://github.com/twhui/MSG-Net">MSG-Net</a>.

# Testing data
Testig set is available at the folder <code>MSNet-release/testing sets</code>.
