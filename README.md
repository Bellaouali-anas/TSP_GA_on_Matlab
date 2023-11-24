Objet : Envoi des documents pour le cours d'EDP non linéaires comme demandé

# Traveling Salesman Problem Solver using Genetic Algorithm (MATLAB)

This repository contains MATLAB code to solve the Traveling Salesman Problem (TSP) using a Genetic Algorithm (GA). The Genetic Algorithm is implemented in MATLAB to find an approximate solution to the TSP by evolving a population of possible tours to minimize the total distance traveled.

## Files Included:

- `main.m`: This is the main script that serves as an entry point to run the TSP solver. It takes the following parameters:
  - `Cout_mat`: Cost matrix representing the distances between cities.
  - `n_p`: Number of populations in the GA.
  - `n_i`: Number of iterations.
  - `Ps`: Probability of selection.
  - `P_R`: Probability of reproduction.
  - `ox`: Order Crossover probability.
  - `Taille`: Tournament selection size.
  - `Pm`: Probability of mutation.
  - `il`: Initialization size.

- `main.mlx`: This file contains an example of how to use the `main.m` function. It demonstrates how to set the input parameters and explains the returned values.

- Other supporting MATLAB files: The repository includes multiple MATLAB files that represent the functions utilized in solving the TSP problem using a Genetic Algorithm.

- `TSP_GA_Theory_Practice.pdf`: This PDF file provides theoretical and practical explanations of the TSP problem and the Genetic Algorithm used in this repository.

## Instructions to Run:

1. **Clone the Repository:**
   - Clone this repository to your local machine using:
     ```
     git clone <repository-url>
     ```

2. **MATLAB Installation:**
   - Ensure you have MATLAB installed on your machine.

3. **Running the Code:**
   - Open MATLAB and navigate to the directory where the repository is cloned.

4. **Running the `main.m` script:**
   - Modify the parameters in the `main.m` file as needed.
   - Run the `main.m` script in MATLAB.

5. **Input Parameters:**
   - Modify the input parameters in the `main.m` function call to experiment with different settings for the Genetic Algorithm. (`Taille`, `il`, etc.)

6. **Example Usage:**
   - Refer to the `main.mlx` file for an example of how to use the `main.m` function with explanation.

7. **Results Returned by `main.m`:**
   - `pop`: The final population of paths.
   - `Best_Distances`: A list of the minimal distance of every iteration.
   - `Best_Chemins`: A list of the paths with the minimal distance of every iteration.
   - `dist_moyene`: A list of the average distances in every iteration.

8. **Refer to `TSP_GA_Theory_Practice.pdf`:**
   - For theoretical and practical aspects of the TSP problem and the Genetic Algorithm used.

Please refer to the comments within the MATLAB files for more details about the specific functions used in the Genetic Algorithm for solving the TSP.

For any questions or issues, refer to the provided documentation or reach out for assistance.
