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
</details>
<details>
  <summary>Gaussian Process-Based Traversability Analysis for Terrain Mapless Navigation         </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2403.19010-b31b1b?logo=arXiv)](https://arxiv.org/abs/2403.19010) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/abeleinin/gp-navigation)

</details>

---

### Semantic based
<details>
  <summary>These Maps are Made for Walking: Real-Time Terrain Property Estimation for Mobile Robots           </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2205.12925-b31b1b?logo=arXiv)](https://arxiv.org/abs/2205.12925) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/roahmlab/sel_map)
</details>

<details>
  <summary>GA-Nav: Efficient Terrain Segmentation for Robot Navigation in Unstructured Outdoor Environments             </summary>
  
[![arXiv](https://img.shields.io/badge/arXiv-2103.04233-b31b1b?logo=arXiv)](https://arxiv.org/abs/2103.04233) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/rayguan97/GANav-offroad)

#### 1. Dataset download
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
│   ├── sim_lake
│   │   │── test.txt
│   │   │── train.txt
│   │   │── val.txt
│   │   │── annotation
│   │   └── image
├── configs
├── tools
```
#### 2. Docker run

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

### Dataset
- [RELLIS-3D](https://www.unmannedlab.org/research/RELLIS-3D) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU  
- [RUGD](http://rugd.vision/) : Video dataset annotated with pixel-wise labels
