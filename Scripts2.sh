#MASK RCNN

wget https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5


git clone https://github.com/matterport/Mask_RCNN.git
sudo pip2 install -r requirements.txt
#finish requirements for RCNN
#pip install scikit-build; pip install cmake
pip2 install opencv-python==4.2.0.32


#install maskRCNN
sudo python2 setup.py install
git clone https://github.com/waleedka/coco.git

cd coco/PythonAPI
make
sudo make install

pip install Cython  -i  https://pypi.tuna.tsinghua.edu.cn/simple/ 
#pip install fasttext  -i  https://pypi.tuna.tsinghua.edu.cn/simple/ 
#move pycocotools (in coco/PythonAPI/

python Check.py

 
 pip install scikit-image
 sudo apt-get install python-tk  
 
 git mask_rcnn
 install requirements.txt
 
 
# cmake -D WITH_FFMPEG=OFF -D ENABLE_PRECOMPILED_HEADERS=OFF ..
# OPENCV INSTALL


sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libopenexr-dev libdc1394-22-dev
# Skip this part to get newer version of Opencv

#wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.11/opencv-2.4.11.zip unzip opencv-2.4.11.zip
# cd opencv2.4.11
# mkdir build
# cd build
# cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local/opencv2.4.11  -D WITH_CUDA=ON -D BUILD_PYTHON_SUPPORT=ON -D WITH_FFMPEG=OFF -D BUILD_EXAMPLES=ON   -D BUILD_TIFF=ON ..
#make -j4
#sudo make install

#opencv3.4.4 
cvVersion="3.4.4"

git clone https://github.com/opencv/opencv.git
cd opencv
git checkout $cvVersion
cd ..

git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout $cvVersion
cd ..

cd opencv
mkdir build
cd build

#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local/opencv3  -D WITH_CUDA=ON OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules/  -D BUILD_PYTHON_SUPPORT=ON -D WITH_FFMPEG=OFF -D BUILD_EXAMPLES=ON  -D BUILD_TIFF=ON -D CUDA_GENERATION=Maxwell ..

# OR local installation
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=$cwd/installation/OpenCV-"$cvVersion" -D WITH_CUDA=ON OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules/  -D BUILD_PYTHON_SUPPORT=ON -D WITH_FFMPEG=OFF -D BUILD_EXAMPLES=ON  -D BUILD_TIFF=ON -D CUDA_GENERATION=Maxwell ..
make -j4

# add set(CMAKE_CXX_STANDARD 11)
# in main CmakesFile 

# split up nppi 
vi modules/gpu/src/graphcuts.cpp
# add || (CUDART_VERSION >= 8000)

# add set(CMAKE_CXX_STANDARD 11)
# in mainc CmakesFile 
sudo gedit ~/.bashrc

#export PKG_CONFIG_PATH=/usr/local/opencv2.4.11/lib/pkgconfig  
#export LD_LIBRARY_PATH=/usr/local/opencv2.4.11/lib 

export PKG_CONFIG_PATH=/usr/local/opencv3.4.4/lib/pkgconfig  
export LD_LIBRARY_PATH=/usr/local/opencv3.4.4/lib 

source ~/.bashrc



