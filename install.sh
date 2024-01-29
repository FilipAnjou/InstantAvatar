# conda python 3.8.1
#conda create -n instant python=3.8.1
#conda activate instant
#conda init bash

pip install wheel
#pip install aitviewer==1.9.0
pip install aitviewer
#pip install torch==1.13.1+cu116 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu116
#pip install torch==1.13.1+cu117 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu117
#pip install torch==1.13.1+cu121 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu121
#pip install torch==1.13.1 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.7 -c pytorch -c nvidia

#pip install torch==2.1.1+cu121 torchvision torchaudio
pip install torch==2.1.1 torchvision torchaudio
pip install kaolin==0.15.0 -f https://nvidia-kaolin.s3.us-east-2.amazonaws.com/torch-2.1.1_cu121.html

pip install fvcore iopath
#pip install git+https://github.com/NVlabs/tiny-cuda-nn/@v1.6#subdirectory=bindings/torch
pip install git+https://github.com/FilipAnjou/tiny-cuda-nn/@v1.6#subdirectory=bindings/torch
#pip install git+https://github.com/NVlabs/tiny-cuda-nn/@v1.6
pip install pytorch-lightning==1.5.7
pip install opencv-python # reboot?
pip install imageio
pip install smplx==0.1.28
pip install hydra-core==1.1.2
#pip install scipy==1.5.2
pip install h5py ninja chumpy numpy==1.23.1
pip install lpips
