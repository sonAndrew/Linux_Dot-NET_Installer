# Linux_Dot-NET_Installer
### Linux_Dot-NET_Installer is a collection of scripts to install Microsoft's .NET SDK and Runtime on Linux machines.

## How to use "Linux_Dot-NET_Installer".
There are 2 ways to use the "Linux_Dot-NET_Installer".

### * * * * * * * * * * * * NOTICE * * * * * * * * * * * * 
To see if your distribution has a ( **Usable** ) script, scroll to the ( **Currently Working Installer Scripts** ) section.
### 1st Way
First:

    Clone the project into your home directory

Then:

    cd Linux_Dot-NET_Installer

Next:

    chmod +x main.sh

Finally:

    ./main.sh

### Suggested Way
First:

    Clone the project into your home directory

Then:

    cd Linux_Dot-NET_Installer && cd distro-based-installers

Next pick your distro:

    chmod +x fedora.installer.sh

Finally:

    ./fedora.installer

## Structure
Linux_Dot-NET_Installer
- distro-based-installers
    - alpine-installer.sh - Usable
    - centos-installer.sh - Un-usable
    - fedora-installer.sh - Usable
    - ubuntu-installer.sh - Un-usable
- distros.txt - A list of supported distributions.
- LICENSE
- main.sh - Entry Point but I suggest using the installers in ( distro-based-installers ) file for now.
- README.md

## Currently Working Installer Scripts:
#### Alpine
- alpine-installer.sh
    - Supported Versions
        - 3.17
        - 3.16
        - 3.15
    - Supported .NET Versions
        - .NET 6
        - .NET 7
    - .NET Versions NOT Supported
        - .NET 5
        - .NET Core 3.1
        - .NET Core 3.0
        - .NET Core 2.2
        - .NET Core 2.1
        - .NET Core 2.0
    - Supported Architectures
        - x86_64
            - .NET 6
                - 3.16
            - .NET 7
                - 3.17
        - aarch64
            - .NET 6
                - 3.16
            - .NET 7
                - 3.17
        - armv7
            - .NET 6
                - 3.16
            - .NET 7
                - 3.17
        - s390x
            - .NET 6
                - 3.16
            - .NET 7
                - 3.17
        - ppc64le
            - .NET 7
                - edge
#### Fedora
- fedora-installer.sh
    - Supported Versions
        - 38
        - 37
    - Supported .NET Versions
        - .NET 6
        - .NET 7
    - .NET Versions NOT Supported
        - .NET 5
        - .NET Core 3.1
        - .NET Core 3.0
        - .NET Core 2.2
        - .NET Core 2.1
        - .NET Core 2.0
## To Be Added:
- CentOS
    - Supported Versions
     - 7
- Debian
    - Supported Versions
        - 12
        - 11
        - 10
- openSUSE
    - Supported Versions
        - 15.4+
- SLES
    - Supported Versions
        - 15
        - 12 SP5
- Ubuntu
    - Supported Versions
        - 20.04 (LTS)
        - 18.04 (LTS)
        - 16.04 (LTS)

## Future Plans

In the future, I hope to make the Linux_Dot-NET_Installer a .Net Management Tool for Linux. 
It will either be a **Command-line tool** or have a **GUI** or both.
The features of this application would be:
- Installing supported versions of the .NET SDK and Runtime ( ASP.NET and .NET ).
- Removing versions of the .NET SDK and Runtime ( ASP.NET and .NET ).
- Managing installed versions of the .NET SDK and Runtime ( ASP.NET and .NET ).

These are the ideas I have at the moment for doing such things.

1. First I would have to finish creating the installer scripts for all supported distributions.
    - Alpine
    - CentOS 7
    - Debian
    - Fedora
    - openSUSE
    - SLES
    - Ubuntu

2. I would then make scripts compatible with previous .NET SDK and Runtime ( ASP.NET and .NET ) versions.

Then we will see what happens. If no one uses this script that's fine, I have a need for it an I know I am not alone in that need so hopefully it will be useful to someone other than me.

If you have any questions or suggestions then you can post them on in Discussions.