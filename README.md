
# File Sharing System Setup

This repository provides a set of batch files to set up a file sharing system between two computers on the same network. These batch files automate the process of configuring file sharing, allowing you to easily share files between computers.

## Prerequisites

- Two computers connected to the same network (local area network or LAN)
- Windows operating system installed on both computers

## Setup Instructions

1. Clone or download this repository to both computers.

2. **First Computer Setup**
    - Open the `file_sharing.bat` file in a text editor.
    - Modify the batch file to specify the desired shared folder path and permissions if needed.
    - Save the file.

3. **Second Computer Setup**
    - Open the `access_shared_folder.bat` file in a text editor.
    - Modify the batch file to prompt for the IP address of the first computer or specify it directly if known.
    - Save the file.

4. **First Computer Configuration**
    - Double-click the `file_sharing.bat` file on the first computer.
    - The batch file will configure file sharing, create a shared folder, and set appropriate permissions.
    - Wait for the process to complete.

5. **Second Computer Configuration**
    - Double-click the `access_shared_folder.bat` file on the second computer.
    - Enter the IP address of the first computer when prompted or modify the batch file to specify it directly.
    - The shared folder from the first computer will be opened on the second computer.
    - Wait for the process to complete.

## Accessing the Shared Folder

- After the setup process is completed, you can access the shared folder from the second computer.
- Open File Explorer on the second computer.
- In the address bar, enter the following: `\\<IP-address-of-first-computer>\SharedFolder`
- Replace `<IP-address-of-first-computer>` with the actual IP address of the first computer.
- Press Enter or click on the address.
- You should now see and interact with the files in the shared folder.

## Important Notes

- Both computers must be connected to the same network for file sharing to work.
- Ensure that the necessary network permissions are set correctly to access the shared folder.
- Make sure to enter the correct IP address of the first computer when prompted on the second computer.


