# Caffe for MS-Net (Multi-scale Network)
This repository is the release of <strong>MS-Net</strong> for our paper <a href="http://personal.ie.cuhk.edu.hk/~ccloy/files/eccv_2016_depth.pdf"><strong>Depth Map Super-Resolution by Deep Multi-Scale Guidance </strong></a> in ECCV16. It comes with 4 trained networks (x2, x4, x8, and x16) and 3 hole-filled testing sets (A, B, and C).

To the best of our knowledge, MS-Net is the <strong>FIRST convolution neural network</strong> which attempts to <strong> upsample depth images</strong>.

Another <a href="https://github.com/twhui/MSG-Net">repository </a> for <strong>MSG-Net</strong> (with multi-scale guidance) is also available.

For more details, please visit the <a href="http://mmlab.ie.cuhk.edu.hk/projects/guidance_SR_depth.html">project page </a>.

# Dependency
We train our models using <a href="https://github.com/BVLC/caffe">caffe</a> and evaluate the results on Matlab.

# Installation and Running
You need to install <a href="https://github.com/BVLC/caffe">caffe</a> and remeber to complie matcaffe. You can put the folder <code>MSNet-release</code> in <code>caffe/examples</code>. Finally, you need to get into the the directory of <code>examples/MSNet-release</code>, and run <code>MSNet.m</code>. </li>

# Training data
Please refer to <a href="https://github.com/twhui/MSG-Net">MSG-Net</a>.

# License and Citation
All code is provided for research purposes only and without any warranty. Any commercial use requires our consent. When using the code and/or training data in your research work, please cite the following paper:

"T.-W. Hui, C. C. Loy and X. Tang, Depth Map Super-Resolution by Deep Multi-Scale Guidance, pp. 353–369, ECCV16".
