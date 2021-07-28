
# Pangolin 
# Dependencies	
sudo apt-get install libglew-dev libboost-dev libboost-thread-dev libboost-filesystem-dev 
sudo apt install libgl1-mesa-dev
sudo apt install cmake 



# Install Pango

git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
mkdir build
cd build
cmake ..
make -j4
sudo make install


#boost  library
 sudo apt-get install libboost-dev libboost-thread-dev libboost-filesystem-dev 
 sudo apt-get install libboost-all-dev 




sudo apt-get install libeigen3-dev


# check Driver version output for G3:M6O  = 460.32.03 
cat /proc/driver/nvidia/version

#Get ready for Cuda drivers -----------------------
sudo apt install gcc-5 
sudo apt install g++-5

cd /usr/bin 
ls -l gcc*

#gcc to gcc-5, run the following command:
 sudo mv gcc gcc.bak  # make backup
 sudo ln -s gcc-5 gcc  # ling gcc to be 5
 
 sudo mv g++ g++.bak 
 sudo ln -s g++-5 g++
 
 
 cd 
 
 
 # Ready to Donwload Cuda 9.0 
 # first try: version -384.81      
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda_9.0.176.1_linux-run

wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/3/cuda_9.0.176.3_linux-run
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/4/cuda_9.0.176.4_linux-run

sudo chmod +x cuda_9.0.176_384.81_linux-run

./cuda_9.0.176_384.81_linux-run
sudo sh cuda_9.0.176.1_linux-run 
sudo sh cuda_9.0.176.2_linux-run 
sudo sh cuda_9.0.176.3_linux-run
sudo sh cuda_9.0.176.4_linux-run

#after Installing Cuda 
#add to  ~/.bashrc
# export  PATH=/usr/local/cuda-9.0/bin:$PATH
# export  LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64$LD_LIBRARY_PATH
# export CUDA_HOME=/usr/local/cuda-9.0

#Now Cudnn - start  -------------------------------
#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/7.6.5.32/Production/9.0_20191031/cudnn-9.0-linux-x64-v7.6.5.32.tgz


#or 7.5.1
#log in and do
	#statements
donewnlaod from browser
wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.5.1/prod/9.0_20190418/cudnn-9.0-linux-x64-v7.5.1.10.tgz

#unzip it and enter directory 

# Configure Cudnn

sudo cp cuda/include/cudnn.h /usr/local/cuda/include/
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64/
sudo chmod a+r /usr/local/cuda/include/cudnn.h 
sudo chmod a+r /usr/local/cuda/lib64/libcudnn*

#Check if sucesfull
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2


# Ready  for  Tensorflow-GPU
 sudo pip install tensorflow-gpu==1.12.3 -i https://pypi.tuna.tsinghua.edu.cn/simple/

 #Keras 
 
 sudo pip install keras==2.0.9 -i https://pypi.tuna.tsinghua.edu.cn/simple 
 