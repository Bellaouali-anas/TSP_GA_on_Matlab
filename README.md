# 🧠 Traveling Salesman Problem Solver using Genetic Algorithm (MATLAB)

This repository provides a MATLAB implementation of a **Genetic Algorithm (GA)** to solve the classic **Traveling Salesman Problem (TSP)**. The algorithm evolves a population of candidate solutions over several generations to approximate the shortest possible route visiting each city exactly once and returning to the origin.

---

## 📁 Repository Contents

- **`main.m`**  
  The main script for running the TSP solver. It takes several configurable parameters.

- **`main.mlx`**  
  A live script that demonstrates how to use `main.m`. It includes explanations, parameter setup, and output analysis.

- **Supporting MATLAB functions**  
  Includes helper functions that define the GA operators (selection, crossover, mutation, etc.) tailored for solving the TSP.

- **`TSP_GA_Theory_Practice.pdf`**  
  A PDF document explaining the theoretical background of the TSP and the genetic algorithm approach, along with practical implementation insights.


## ▶️ Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/Bellaouali-anas/TSP_GA_on_Matlab.git
```

### 2. Open in MATLAB

Make sure MATLAB is installed on your machine. Then open MATLAB and navigate to the folder where you cloned the repository.

### 3. Run the Solver

You can either:
- Edit the parameters directly in `main.m` and run it.
- Or follow the guided example in `main.mlx`, which explains the process and demonstrates how to use the solver.


## 🛠 Example Parameters

Customize the algorithm by calling the function with your desired settings:

```matlab
main(Cout_mat, n_p, n_i, Ps, P_R, ox, Taille, Pm, il)
```
Where:

  - `Cout_mat`: Cost/distance matrix between cities  
  - `n_p`: Number of individuals in the population  
  - `n_i`: Number of iterations (generations)  
  - `Ps`: Selection probability  
  - `P_R`: Reproduction probability  
  - `ox`: Order crossover probability  
  - `Taille`: Tournament selection size  
  - `Pm`: Mutation probability  
  - `cil`: Initialization population size
    
Refer to `main.mlx` for a detailed, interactive example.

## 📊 Output Details
Running the solver returns the following:

`pop:` Final population of possible tours

`Best_Distances:` Best (minimal) distance found at each generation

`Best_Chemins:` Corresponding best path at each generation

`dist_moyene:` Average population distance at each generation

These outputs help evaluate how well the Genetic Algorithm is optimizing over time.

## 📚 Documentation
For theory and detailed explanation, see:

TSP_GA_Theory_Practice.pdf

It covers:

An overview of the Traveling Salesman Problem

Key concepts in Genetic Algorithms

How both are combined in this project

## 🙋 Support
If you have any questions, suggestions, or run into issues:

- 📬 Open an issue on this repository

- 🤝 Reach out through the contact info provided

- 🧑‍💻 You're welcome to contribute via pull requests!

