# User Creation Script

A Bash script to automate the creation of a user account on a Linux system with customizable password generation. This script allows system administrators to create a new user, set a custom comment, and modify the password creation process.

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Configuration](#configuration)
- [Installation](#installation)
- [Customization](#customization)
- [Requirements](#requirements)
- [Contributing](#contributing)
- [Acknowledgments](#acknowledgments)

## Introduction

This Bash script streamlines the process of creating a new user account on a Linux system. It prompts the user for a username and optional comments, generates a password, and sets up the user account. The script is designed for ease of use and customization, allowing administrators to modify the password creation process according to their specific needs.

## Usage

To use the user creation script, run the script with **sudo or root** **privileges** and provide the desired username and optional comments:

```bash
sudo ./create_user.sh [USERNAME] [COMMENT]
```

## Configuration

Before running the script, ensure it has executable permissions:

```bash
chmod +x create_user.sh
```

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/user-creation-script.git
   ```

2. Navigate to the project directory:

   ```bash
   cd user-creation-script
   ```

3. Make the script executable:

   ```bash
   chmod +x create_user.sh
   ```

4. Run the script with sudo or root privileges:

   ```bash
   sudo ./create_user.sh [USERNAME] [COMMENT]
   ```

## Customization

- **Password Generation:**
  - Users can modify the password generation process by changing the `PASSWORD` variable in the script.

## Requirements

- Bash (Bourne Again SHell)
- Linux System

## Contributing

Contributions are welcome! If you'd like to contribute to the project, please follow the [contribution guidelines](CONTRIBUTING.md).

## Acknowledgments

- The script allows administrators to customize the password creation process for added security.
