# Linux_Dot-NET_Installer
An installer for Microsoft's .NET SDK and Runtime on Linux machines.

### How to use "Linux_Dot-NET_Installer".
There are 2 ways to use the "Linux_Dot-NET_Installer".

#### 1st Way
- The first and easiest way to use the "Linux_Dot-NET_Installer" would be to:
    - Clone the project into your home directory
    - cd into Linux_Dot-NET_Installer
    - sudo bash main.sh

#### 2nd Way
- The second way would be to make ( main.sh ) executable:
    - Follow the steps in the first way up until ( sudo bash main.sh ).
    - make ( main.sh ) executable with chmod +x main.sh

### Currently Working:

### Currently Added:
- Fedora 
    - SDK 7.0

### To Be Added:
- Alpine
    - Latest SDKs
    - Latest Runtimes

- CentOS
    - Latest SDKs
    - Latest Runtimes

- Debian
    - Latest SDKs
    - Latest Runtimes

- Fedora
    - Latest Runtimes

- openSUSE
    - Latest SDKs
    - Latest Runtimes

- SLES
    - Latest SDKs
    - Latest Runtimes
    
- Ubuntu
    - Latest SDKs
    - Latest Runtimes

### Structure
- Entry Point
    - main.sh

- Libraries
    - function_Libraries
        - runtime_Library
            - aspnetcore_7.sh
            - dotnet7.sh

        - sdk_Library
            - sdk_6.sh
            - sdk_7.sh

- Installers
    - fedora_Installer.sh
    - ubuntu_Installer.sh
