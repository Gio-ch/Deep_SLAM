# Deep_SLAM
Deep_SLAM is a visual SLAM system designed for non-static environments.
Traditional SLAM algorithms’ non-geometric modules are limited by data association tasks and have limits in improving SLAM performance in precense of moving objectss. The objective of this work was to investigate improving robustness and performance of SLAM system within dynamic environments. Emphasis was put on improving conventional SLAM framework’s trajectory estimation using information provided by a deep neural network. The system builds on a state of the art ORB-SLAM algorithm.

Table 1 summarizes the comparison of the results obtained for challenging scenes. The evaluation was carried out on the most dynamic scenes in the [TUM dataset](http://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets)

<img width="700" alt="ATRMSE Evaluation" src="https://user-images.githubusercontent.com/26338303/127303898-27faa7b3-4d64-4c83-b4f0-21b73373a539.png">
<img width="452" alt="Comparison_vs_ORB" src="https://user-images.githubusercontent.com/26338303/127312629-700ba003-4780-409e-84ab-e72307377179.png">


<p align="left">
<img width="350" alt="Screenshot 2021-07-28 at 14 04 48" src="https://user-images.githubusercontent.com/26338303/127304472-3aeb10e0-ed16-45d1-a0a4-d55d844842e9.png">

  <img  width="350" alt="Screenshot 2021-07-28 at 14 04 55" src="https://user-images.githubusercontent.com/26338303/127304484-2c77f196-95f7-451c-9d08-65ab42a266ef.png">
</p>

## Hardware used and difficulties encountered
- Most of the deep learning applications make use of parallel computing platforms. Tensorflow libraries require NVIDIA graphic drivers, GPU s attached to apple computers do not support CUDA. Making it extremely hard to work on deep learning applications in real time. Consequently, initial attempt to carry out investigation on a Macbook-Pro with an Intel GPU was abandoned.
- Accordingly for the experiments, the evaluation was carried out using an AWS EC2 instance, equiped with the NVIDIA Tesla M60 GPU, allowing for GPU acceleration and supporting parallel computing platform and programming models. 
- Additionally the EC2 instance is headless(not attached to a monitor) and the pangolin software, which is used in the  algorithm, uses OpenGL. Firstly, The complication arises as normal ssh session and x11 forwarding do not support OpenGL. Additionally, this kind of set up creates number of complications as sending the pixels and afterwards rendering on a local GPU is very time consuming and makes it near impossible to interactively observe the results and a point cloud.
- The mentioned complications were solved by redirecting the 3D rendering commands from Linux OpenGL applications to 3D accelerator hardware in a dedicated server and displaying the rendered output interactively to a thin client located elsewhere on the network.
- An open source program, <a href="https://www.virtualgl.org/">VirtualGL</a>, was used to allow for the posssibility of 3d rendering on the remote server.

## Getting started
The library has been tested on  Ubuntu 18.04, but it should be relatively easy to compile in other platforms.
Shell scripts are provided for downloading and installing all the required dependencies.

### C++11 or C++0x Compiler
We use the new thread and chrono functionalities of C++11.

### Pangolin
We use [Pangolin](https://github.com/stevenlovegrove/Pangolin) for visualization and user interface. Dowload and install instructions can also be found at: https://github.com/stevenlovegrove/Pangolin.

### OpenCV
[OpenCV](http://opencv.org) is used to manipulate images and features. Dowload and install instructions can also be found at: http://opencv.org.

### Eigen3
Required by g2o (see below). Download and install instructions can also be found at: http://eigen.tuxfamily.org. **Required at least 3.1.0**.

### DBoW3 and g2o (Included in Thirdparty folder)
We use modified versions of [DBoW3](https://github.com/rmsalinas/DBow3) (instead of DBoW2) library to perform place recognition and [g2o](https://github.com/RainerKuemmerle/g2o) library to perform non-linear optimizations. Both modified libraries (which are BSD) are included in the *Thirdparty* folder.

## Acknowledgements
The code builds on ORB-SLAM and YoloSLAM
