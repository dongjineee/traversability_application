# Traversability_Application

### System Information

- **Operating System**: Ubuntu 20.04
- **ROS Version**: Noetic
- **CUDA Version**: 12.0
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
  
[![PDF](https://img.shields.io/badge/Paper-RSS--Proceedings-blue?logo=readme)](https://www.roboticsproceedings.org/rss19/p054.html)
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

---

### Update soon ..
<details>
  <summary>Update soon ..</summary>

### Follow the Footprints: Self-supervised Traversability Estimation for Off-road Vehicle Navigation based on Geometric and Visual Cues  
[![arXiv](https://img.shields.io/badge/arXiv-2402.15363-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.15363)
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L60-L65) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/yurimjeon1892/FtFoot)

---

### Learning Self-Supervised Traversability With Navigation Experiences of Mobile Robots: A Risk-Aware Self-Training Approach  
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L9-L15) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/Ikhyeon-Cho/LeSTA)

---

### Probabilistic Traversability Model for Risk-Aware Motion Planning in Off-Road Environments  
[![arXiv](https://img.shields.io/badge/arXiv-2210.00153-b31b1b?logo=arXiv)](https://arxiv.org/abs/2210.00153)
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L67-L74) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/mit-acl/mppi_numba)

---

### WayFASTER: A Self-Supervised Traversability Prediction for Increased Navigation Awareness  
[![arXiv](https://img.shields.io/badge/arXiv-2402.00683-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.00683) 
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L137-L142) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/matval/wayfaster)

---

### Gaussian Process-Based Traversability Analysis for Terrain Mapless Navigation  
[![arXiv](https://img.shields.io/badge/arXiv-2403.19010-b31b1b?logo=arXiv)](https://arxiv.org/abs/2403.19010) 
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L144-L149) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/abeleinin/gp-navigation)

---

### These Maps are Made for Walking: Real-Time Terrain Property Estimation for Mobile Robots  
[![arXiv](https://img.shields.io/badge/arXiv-2205.12925-b31b1b?logo=arXiv)](https://arxiv.org/abs/2205.12925) 
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./terrain_traversability_analysis.bib#L184-L193) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/roahmlab/sel_map)

---

### GA-Nav: Efficient Terrain Segmentation for Robot Navigation in Unstructured Outdoor Environments  
[![arXiv](https://img.shields.io/badge/arXiv-2103.04233-b31b1b?logo=arXiv)](https://arxiv.org/abs/2103.04233) 
[![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./terrain_traversability_analysis.bib#L280-L289) 
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/rayguan97/GANav-offroad)

</details>

### Dataset
- [RELLIS-3D](https://www.unmannedlab.org/research/RELLIS-3D) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU  
- [RUGD](http://rugd.vision/) : Video dataset annotated with pixel-wise labels
- [BotanicGarden](https://github.com/robot-pesg/BotanicGarden) : Stereo camera images, LiDAR pointclouds, GPS/IMU, Wheel encoders
- [GOOSE](https://goose-dataset.de/) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU
