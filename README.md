# Traversability_Application

### System Information

- **Operating System**: Ubuntu 20.04
- **ROS Version**: Noetic
- **GPU**: NVIDIA 3090ti

### Clone
```bash
git clone --recursive https://github.com/dongjineee/traversability_application.git
```
---

### TODO

### Gazebo Setup

For setting up the Gazebo simulation environment, clone the Husky repository:

https://github.com/dongjineee/husky

After cloning, follow the instructions on that page to run the Docker setup.

---

## 1. Traditional

<details><summary>&emsp;<strong>1.a. Image Classification</strong></summary>
  <details><summary>&emsp;&emsp;GA-Nav: Efficient Terrain Segmentation for Robot Navigation in Unstructured Outdoor Environments </summary>
    
  [![arXiv](https://img.shields.io/badge/arXiv-2103.04233-b31b1b?logo=arXiv)](https://arxiv.org/abs/2103.04233) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/rayguan97/GANav-offroad)

  #### 1. Dataset download

  Please visit the official websites of the real-world dataset (RELLIS-3D) and the simulation dataset (NEGS-UGV) to download the files. 
  For Data-set, we use ID annotations instead of color annotations.
  Please refer to the GANav Dataset Directory.

  <details>
  <summary> <b> GANav Dataset Directory </b> </summary>

  ```
  GANav
  ├── data
  │   ├── rellis
  │   │   │── test.txt
  │   │   │── train.txt
  │   │   │── val.txt
  │   │   │── annotation
  │   │   │   ├── 00000 & 00001 & 00002 & 00003 & 00004 
  │   │   │── image
  │   │   │   ├── 00000 & 00001 & 00002 & 00003 & 00004 
  │   ├── rugd
  │   │   │── test_ours.txt
  │   │   │── test.txt
  │   │   │── train_ours.txt
  │   │   │── train.txt
  │   │   │── val_ours.txt
  │   │   │── val.txt
  │   │   │── RUGD_annotations
  │   │   │   ├── creek & park-1/2/8 & trail-(1 & 3-7 & 9-15) & village
  │   │   │── RUGD_frames-with-annotations
  │   │   │   ├── creek & park-1/2/8 & trail-(1 & 3-7 & 9-15) & village
  │   ├── goose
  │   │   ├── goose_label_mapping.csv
  │   │   ├── images
  │   │   │   ├── train
  │   │   │   └── val
  │   │   ├── labels
  │   │   │   ├── train
  │   │   │   └── val
  │   │   ├── LICENSE
  │   │   ├── test.txt
  │   │   ├── train.txt
  │   │   │── val.txt
  │   ├── lake
  │   │   │── test.txt
  │   │   │── train.txt
  │   │   │── val.txt
  │   │   │── annotation
  │   │   └── image
  ├── configs
  ├── tools
  ```

  </details>

  #### 2. Group semantic seg RUN

  ```bash
  ##=========== wvn docker setting ===========##
  cd traversability_application/wild_nav/wild_visual_navigation/docker
  docker compose -f docker-compose-gui-nvidia.yaml build
  docker compose -f docker-compose-gui-nvidia.yaml up -d
  docker compose -f docker-compose-gui-nvidia.yaml exec ga_nav /bin/bash

  cd src/GANav-offroad/
  pip install -e .

  ##=========== RUN Data processing ===========##
  ##for rellis-3d dataset
  #run relable group4
  python ./tools/convert_datasets/rellis_relabel4.py

  #run relable group6
  python ./tools/convert_datasets/rellis_relabel6.py

  ##=========== RUN Training ===========##
  ##for rellis-3d dataset(real_world)
  python ./tools/train.py ./configs/ours/ganav_group6_rellis.py

  ##for lake dataset(simulation)
  python ./tools/train.py ./configs/ours/ganav_group6_lake.py

  ##=========== RUN Eval ===========##
  ##for rellis-3d dataset
  python ./tools/test.py ./trained_models/rellis_group6/ganav_rellis.py \
            ./work_dirs/ganav_group6_rellis/latest.pth --eval=mIoU

  ##for lake dataset
  python ./tools/test.py ./trained_models/lake_group6/ganav_lake_6.py \
            ./work_dirs/ganav_group6_lake/latest.pth --eval=mIoU

  ##=========== RUN Visualize ===========##
  python ./tools/visualize.py <img_dir> <config> <checkpoint>
  ##for rellis-3d dataset
  python ./tools/visualize.py ./data/rellis/image/00000 ./configs/ours/ganav_group6_rellis.py ./work_dirs/ganav_group6_rellis/latest.pth

  ##for lake dataset
  python ./tools/visualize.py ./data/lake/image ./configs/ours/ganav_group6_lake.py ./work_dirs/ganav_group6_lake/latest.pth
  ```

  #### 3. ROS_PKG RUN
  ```bash
  # In the sim_container
  roslaunch husky_gazebo husky_lake.launch rviz:=ga_nav

  # In the ga_nav_container
  roslaunch ga_nav ga_nav.launch
  ```
  </details>


</details>

<details><summary>&emsp;<strong>1.b. DEM Based</strong></summary>

  <details><summary>&emsp;&emsp;BGKI-Traversability</summary>
  <p>&emsp;&emsp;ToDo</p>
  </details>

  <details><summary>&emsp;&emsp;Elevation-Mapping</summary>
  <p>&emsp;&emsp;ToDo</p>
  </details>

</details>


## 2. Learning Based
<details><summary>&emsp;<strong>2.a. Image Based</strong></summary>

  <details><summary>&emsp;&emsp;Fast Traversability Estimation for Wild Visual Navigation</summary>

  [![arXiv](https://img.shields.io/badge/arXiv-2305.08510-b31b1b?logo=arXiv)](https://arxiv.org/abs/2305.08510)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/leggedrobotics/wild_visual_navigation)

  ### Package RUN
  ```bash
  ##=========== wvn docker setting ===========##
  cd traversability_application/wild_nav/wild_visual_navigation/docker
  docker compose -f docker-compose-gui-nvidia.yaml build
  docker compose -f docker-compose-gui-nvidia.yaml up -d
  docker compose -f docker-compose-gui-nvidia.yaml exec wvn_nvidia /bin/bash
  source first_run.sh

  ##=========== RUN SIMULATION ===========##
  # In the sim_container
  roslaunch husky_gazebo husky_lake.launch rviz:=wild_nav

  # In the wvn_container
  roslaunch wild_visual_navigation_jackal wild_visual_navigation.launch
  ```

  </details>

</details>

<details><summary>&emsp;<strong>2.b. Geometric Based</strong></summary>

  <details><summary>&emsp;&emsp;Learning Self-Supervised Traversability With Navigation Experiences of Mobile Robots: A Risk-Aware Self-Training Approach    </summary>

  [![IEEE](https://img.shields.io/badge/IEEE-10468651-blue?logo=IEEE)](https://ieeexplore.ieee.org/document/10468651)
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/Ikhyeon-Cho/LeSTA)

  ### Package RUN
  ```bash
  cd ~/LeSTA/docker
  ##image build
  docker compose -f docker-compose-gui-nvidia.yaml build
  ##create container
  docker compose -f docker-compose-gui-nvidia.yaml up -d
  docker exec -it docker-lesta-1 /bin/bash

  ##in container
  cd ~/lesta_ws/
  catkin build
  source devel/setup.bash

  ## label_generate ##
  roslaunch lesta label_generation.launch
  rosservice call /lesta/save_label_map "train_set.pcd" "/root/lesta_ws/src/LeSTA/data/train"
  rosservice call /lesta/save_label_map "val_set.pcd" "/root/lesta_ws/src/LeSTA/data/val"

  ## train ##
  cd /root/lesta_ws/src/LeSTA
  python3 pylesta/tools/train.py

  ## travel predict ##
  roslaunch lesta traversability_prediction.launch
  roslaunch lesta traversability_mapping.launch
  ```

  </details>

</details>

---


### Real World - Dataset
- [RELLIS-3D](https://www.unmannedlab.org/research/RELLIS-3D) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU  
- [RUGD](http://rugd.vision/) : Video dataset annotated with pixel-wise labels
### Simulation World - Dataset
- [NEGS-UGV](https://www.uma.es/robotics-and-mechatronics/info/132852/negs-ugv-dataset) : semantic & rgb images, seamantic & raw Lidar pointsclouds
