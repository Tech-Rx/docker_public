## Passive Income Apps in Docker on GitHub Codespaces

Welcome to the **Passive Income Apps in Docker on GitHub Codespaces** repository! This project explores various passive earning applications by setting them up in Docker containers within GitHub Codespaces. The goal is to evaluate their functionality, assess their performance, and determine their potential for generating passive income.

## Getting Started

### Prerequisites

- **GitHub account**
- **GitHub Codespaces access**
- Basic understanding of Docker and Docker Compose

### Cloning the Repository

First, clone this repository to your GitHub Codespace:

```bash
git clone https://github.com/absaro/docker.git
```

### Setup Scripts

The repository includes several `.sh` files for setting up different passive income apps. Follow these steps to configure each app:

1. Navigate to the directory containing the `.sh` files for the app you want to set up.

2. Edit the `.sh` files to update credentials and any other configuration details:

   ```bash
   nano setup_(app_name).sh  # Open and edit the script as needed
   ```
 Or,  
![Screenshot 2024-08-25 165406](https://github.com/user-attachments/assets/01b4153b-7efc-4ca8-86f1-de2449481e06)

3. Run the setup script to install and configure the app:

```bash
bash setup_(app_name).sh
```

4. Optionally, add these .sh scripts to your .bashrc file to make them execute on codespace startup:

```bash
nano ~/.bashrc
```
Copy and past this to the very last of the .bashrc file

```bash
/workspaces/docker/(script_name).sh
```
![Screenshot 2024-08-25 165150](https://github.com/user-attachments/assets/ffad206a-8d1d-423a-9858-d39766bd33f3)

5. For those who have Mysterium Node:
 
    Add your own files from "C:\Users\(username)\.mysterium\" to the .mysterium folder in the repo

7. Either, restart the codespace or reload it using `source ~/.bashrc` and enjoy~

### Apps Included:

1. Honeygain
2. PawnsApp
3. Proxyrack
4. Repocket
5. PacketStream
6. Mysterium Node
