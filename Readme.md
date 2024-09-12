# Passive Income Apps in Docker on GitHub Codespaces

Welcome to the **Passive Income Apps in Docker on GitHub Codespaces** repository! This project explores various passive earning applications by setting them up in Docker containers within GitHub Codespaces. The goal is to evaluate their functionality, assess their performance, and determine their potential for generating passive income.

## Prerequisites

- **GitHub account**
- **GitHub Codespaces access**
- Basic understanding of Docker and Docker Compose

## Getting Started

### Method 1: Using GitHub Codespaces

1. **Get a GitHub account**: If you don't have one, [sign up here](https://github.com/join).

2. **Clone the Repository to Your Codespace**:
    ```bash
    git clone https://github.com/Tech-Rx/docker_public.git
    ```

3. **Configure Setup Scripts**:
    - Navigate to the directory containing the `.sh` files:
   ```bash
   cd docker_public
   ```
    - Open the setup script you want to configure. For example, to edit `setup_honeygain.sh`, use:
   ```bash
   nano setup_honeygain.sh
   ```
      ![Screenshot 2024-08-25 165406](https://github.com/user-attachments/assets/01b4153b-7efc-4ca8-86f1-de2449481e06)
    - Replace `example@gmail.com` and `password` with your actual Honeygain email and password. Save the file (Ctrl + S) and exit the editor (Ctrl + X).

4. **Add Scripts to `.bashrc`**:
    - Run the following command to automatically add the setup scripts to `.bashrc` and apply the changes:
   ```bash
   echo -e "/workspaces/docker_public/setup_honeygain.sh\n/workspaces/docker_public/setup_pawns-cli.sh\n/workspaces/docker_public/setup_repocket.sh\n/workspaces/docker_public/setup_psclient.sh\n/workspaces/docker_public/setup_proxyrack.sh\n/workspaces/docker_public/setup_mysterium.sh" >> ~/.bashrc && source ~/.bashrc
   ```

5. **IMPORTANT**: **Ensure your repository is set to private** to protect your sensitive information!

### Method 2: Local Setup and Push to GitHub

1. **Get a GitHub account**: If you don't have one, [sign up here](https://github.com/join).

2. **Download and Prepare the Repository**:
    - [Download the repository as a ZIP file](https://github.com/Tech-Rx/docker_public/archive/refs/heads/main.zip).
    - Extract the ZIP file to your local machine.
    - If applicable, replace the `.mysterium` folder with your local copy from `C:\Users\username\.mysterium`.

3. **Edit the Scripts**:
    - Open the `.sh` files using a text editor like Notepad.
    - For example, open `setup_honeygain.sh` and replace `example@gmail.com` and `password` with your Honeygain credentials. Save the file and close the editor.

4. **Create a New GitHub Repository**:
    - Go to your GitHub account and [create a new repository](https://github.com/new).
    - Name it something like `passive_income` or another preferred name.

5. **Upload the Files to Your New Repository**:
    - Upload the edited files from your local machine to the newly created repository.

6. **Run in Codespaces**:
    - Open GitHub Codespaces and clone your newly created repository:
   ```bash
   git clone https://github.com/yourusername/passive_income.git
   ```
    - Replace `yourusername` with your actual github username or repo path.
    
    - Run the following command to automatically add the setup scripts to `.bashrc` and apply the changes:
   ```bash
   echo -e "/workspaces/passive_income/setup_honeygain.sh\n/workspaces/passive_income/setup_pawns-cli.sh\n/workspaces/passive_income/setup_repocket.sh\n/workspaces/passive_income/setup_psclient.sh\n/workspaces/passive_income/setup_proxyrack.sh\n/workspaces/passive_income/setup_mysterium.sh" >> ~/.bashrc && source ~/.bashrc
   ```

7. **IMPORTANT**: **Ensure your repository is set to private** to protect your credentials!

### Apps Included:

1. Honeygain
2. PawnsApp
3. Proxyrack
4. Repocket
5. PacketStream
6. Mysterium Node

## STATUS

### On Datacenter IPs

| App                    | Supported (✓) | Not Supported (✗) |
|------------------------|---------------|--------------------|
| Honeygain              |               | ✗                  |
| PwwnsApp               |               | ✗                  |
| Proxyrack              | ✓             |                    |
| Repocket               | ✓             |                    |
| PacketStream           |               | ✗                  |
| MystNode               | ✓             |                    |

On Residential IPs all works!

