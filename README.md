# Travel application

## Fast Traversability Estimation for Wild Visual Navigation

[![PDF](https://img.shields.io/badge/Paper-RSS--Proceedings-blue?logo=readme)](https://www.roboticsproceedings.org/rss19/p054.html)
[![arXiv](https://img.shields.io/badge/arXiv-2305.08510-b31b1b?logo=arXiv)](https://arxiv.org/abs/2305.08510)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/leggedrobotics/wild_visual_navigation)

### Package Installation
```bash
# Navigate to the docker folder and build the environment
cd ~/wild_visual_navigation/wild_visual_navigation/docker
docker compose -f docker-compose-gui-nvidia.yaml build

# Start the container in detached mode
docker compose -f docker-compose-gui-nvidia.yaml up -d

# Access the running container's shell
docker compose -f docker-compose-gui-nvidia.yaml exec wvn_nvidia /bin/bash

# Run the initial setup script
source first_run.sh

roslaunch wild_visual_navigation_jackal sim.launch
roslaunch wild_visual_navigation_jackal wild_visual_navigation.launch

```

---

- **[Follow the Footprints: Self-supervised Traversability Estimation for Off-road Vehicle Navigation based on Geometric and Visual Cues]**  
  Jeon et al., ICRA 2024  
  [![arXiv](https://img.shields.io/badge/arXiv-2402.15363-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.15363)
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L60-L65) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/yurimjeon1892/FtFoot)

---

- **[Learning Self-Supervised Traversability With Navigation Experiences of Mobile Robots: A Risk-Aware Self-Training Approach](https://ieeexplore.ieee.org/document/10468651)**  
  Cho et al., RA-L 2024  
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L9-L15) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/Ikhyeon-Cho/LeSTA)

---

- **[Probabilistic Traversability Model for Risk-Aware Motion Planning in Off-Road Environments](https://ieeexplore.ieee.org/abstract/document/10341350?casa_token=_DR0F3T-v2AAAAAA:5y33BO40ZgI59d21sLqW25-Xk6-XIo4fzkQhJHq4ebyRJUSm8ThI21VISBTkbcGOjDLj84eY)**  
  Cai et al., IROS 2023  
  [![arXiv](https://img.shields.io/badge/arXiv-2210.00153-b31b1b?logo=arXiv)](https://arxiv.org/abs/2210.00153)
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L67-L74) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/mit-acl/mppi_numba)

---

- **[WayFASTER: A Self-Supervised Traversability Prediction for Increased Navigation Awareness]**  
  Gasparino et al., ICRA 2024  
  [![arXiv](https://img.shields.io/badge/arXiv-2402.00683-b31b1b?logo=arXiv)](https://arxiv.org/abs/2402.00683) 
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L137-L142) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/matval/wayfaster)

---

- **[Gaussian Process-Based Traversability Analysis for Terrain Mapless Navigation]**  
  Leininger et al., ICRA 2024  
  [![arXiv](https://img.shields.io/badge/arXiv-2403.19010-b31b1b?logo=arXiv)](https://arxiv.org/abs/2403.19010) 
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./traversability-papers-2023-2024.bib#L144-L149) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/abeleinin/gp-navigation)

---

- **[These Maps are Made for Walking: Real-Time Terrain Property Estimation for Mobile Robots](https://ieeexplore.ieee.org/abstract/document/9792203/)**  
  Ewen et al., RA-L 2022  
  [![arXiv](https://img.shields.io/badge/arXiv-2205.12925-b31b1b?logo=arXiv)](https://arxiv.org/abs/2205.12925) 
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./terrain_traversability_analysis.bib#L184-L193) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/roahmlab/sel_map)

---

- **[GA-Nav: Efficient Terrain Segmentation for Robot Navigation in Unstructured Outdoor Environments](https://ieeexplore.ieee.org/abstract/document/9810192/)**  
  Guan et al., RA-L 2022  
  [![arXiv](https://img.shields.io/badge/arXiv-2103.04233-b31b1b?logo=arXiv)](https://arxiv.org/abs/2103.04233) 
  [![BibTeX](https://img.shields.io/badge/bibtex-Citation-blue)](./terrain_traversability_analysis.bib#L280-L289) 
  [![GitHub](https://img.shields.io/badge/GitHub-Repository-lightgrey?logo=github)](https://github.com/rayguan97/GANav-offroad)




### Dataset
- [RELLIS-3D](https://www.unmannedlab.org/research/RELLIS-3D) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU  
- [RUGD](http://rugd.vision/) : <b> Video dataset annotated with pixel-wise labels </b>
- [BotanicGarden](https://github.com/robot-pesg/BotanicGarden) : Stereo camera images, LiDAR pointclouds, GPS/IMU, Wheel encoders
- [GOOSE](https://goose-dataset.de/) : Data with Stereo Camera images, LiDAR pointclouds, GPS/IMU
