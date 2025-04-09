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
### Image based
<details>
  <summary>Fast Traversability Estimation for Wild Visual Navigation</summary>

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

<details>
    <summary>Follow the Footprints: Self-supervised Traversability Estimation for Off-road Vehicle Navigation based on Geometric and Visual Cues  </summary>

[![arXiv](https://img.shields.io/badge/arXiv-2402.15363-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.15363)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/yurimjeon1892/FtFoot)
</details>

<details>
  <summary>WayFASTER: A Self-Supervised Traversability Prediction for Increased Navigation Awareness       </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2402.00683-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.00683) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/matval/wayfaster)

</details>

---

### Geometric(Terrain structure) based 
<details>
  <summary>Learning Self-Supervised Traversability With Navigation Experiences of Mobile Robots: A Risk-Aware Self-Training Approach    </summary>

[![IEEE](https://img.shields.io/badge/IEEE-10468651-blue?logo=IEEE)](https://ieeexplore.ieee.org/document/10468651)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/Ikhyeon-Cho/LeSTA)

# LeSTA with Gazebo Simulation Setup

This guide walks you through building and launching the LeSTA with Gazebo simulation environment using Docker.

---

## 1. Clone the Repository

```bash
cd lesta_sim
```

---

## 2. Docker Setup

### 2.1. Make entrypoint scripts executable:

```bash
cd Docker
chmod +x lesta_entrypoint.sh
cd ..
```

---

### 2.2. Build and run the container

**Before running**, edit the `volumes` section in `docker-compose.yaml` to match your absolute project path.

You can get the full path using:

```bash
pwd
```

**Example `volumes` section:**

```yaml
volumes:
  - /tmp/.X11-unix:/tmp/.X11-unix
  - /home/yourname/path/to/lesta_sim:/workspace/docker_root
```

Make sure the second path points to your current directory (`lesta_sim`).

Then:

```bash
cd Docker
```

- For Docker Compose v1:
  ```bash
  docker-compose up --build
  ```

- For Docker Compose v2:
  ```bash
  docker compose up --build
  ```

---

## 3. Start the container (if it was stopped):

```bash
docker start lesta
docker attach lesta
```

---

## 4. CMake Fix Required for building LeSTA

Before building the workspace, edit:

```
/workspace/docker_root/lesta_ws/src/LeSTA/lesta_ros/CMakeLists.txt
```

Move the following block **above all other `find_package(...)` calls**:

```cmake
find_package(catkin REQUIRED COMPONENTS
    height_mapping_core
    roscpp
    tf2_ros
    pcl_conversions
    grid_map_ros
    message_generation
)
```

---

## 5. Build the Workspace

```bash
cd /workspace/docker_root/lesta_ws
catkin build lesta
source devel/setup.bash
```

---

## 6. Install pylesta Package

```bash
cd /workspace/docker_root/lesta_ws/src/LeSTA
pip install -e pylesta
```

---

## 7. Gazebo Simulation

### 7.1. Make Gazebo entrypoints executable:

```bash
cd /workspace/docker_root/Docker
chmod +x gazebo_entrypoint_1.sh gazebo_entrypoint_2.sh
```



### 7.2. Run the Git clone & environment setup:

```bash
./gazebo_entrypoint_1.sh
```

> ⚠️ **TODO:** You must edit the workspace directory and `GAZEBO_MODEL_PATH` inside:  
> `/workspace/docker_root/gazebo_ws/src/husky/setup/first_run.sh`



### 7.3. After editing:
    
> [OPTIONAL] edit the custom world path inside gazebo_entrypoint_2.sh and uncomment lines before running:
```bash
cd /workspace/docker_root/Docker && ./gazebo_entrypoint_2.sh
```
---
## 8. Run
If you have completed all the steps above,
you can refer to the following project pages for execution commands:

- LeSTA: https://github.com/Ikhyeon-Cho/LeSTA.git

- Husky: https://github.com/dongjineee/husky.git

Simply follow the instructions provided on each project page to run the system.

---

</details>
<details>
  <summary>Gaussian Process-Based Traversability Analysis for Terrain Mapless Navigation         </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2403.19010-b31b1b?logo=arXiv)](https://arxiv.org/abs/2403.19010) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/abeleinin/gp-navigation)

</details>

---

### Semantic based
<details>
  <summary>These Maps are Made for Walking: Real-Time Terrain Property Estimation for Mobile Robots </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2205.12925-b31b1b?logo=arXiv)](https://arxiv.org/abs/2205.12925) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/roahmlab/sel_map)
</details>

<details>
  <summary>GA-Nav: Efficient Terrain Segmentation for Robot Navigation in Unstructured Outdoor Environments </summary>
  
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

---

### Geometric + Semantic based
<details>
  <summary>Probabilistic Traversability Model for Risk-Aware Motion Planning in Off-Road Environments      </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2210.00153-b31b1b?logo=arXiv)](https://arxiv.org/abs/2210.00153)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/mit-acl/mppi_numba)
</details>

<details>
  <summary>Multitask Learning for Scalable and Dense Multilayer Bayesian Map Inference           </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2205.12925-b31b1b?logo=arXiv)](https://arxiv.org/abs/2106.14986) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/ganlumomo/traversability_labeling_ws)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/ganlumomo/MultiLayerMapping)
</details>

---

### Real World - Dataset
- [RELLIS-3D](https://www.unmannedlab.org/research/RELLIS-3D) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU  
- [RUGD](http://rugd.vision/) : Video dataset annotated with pixel-wise labels
### Simulation World - Dataset
- [NEGS-UGV](https://www.uma.es/robotics-and-mechatronics/info/132852/negs-ugv-dataset) : semantic & rgb images, seamantic & raw Lidar pointsclouds
