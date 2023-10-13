# This is collection of Bash scripts to install .NET on Linux
## Description
Hello and welcome. The Linux_Dot-NET_Installer is a collection of scripts to install Microsoft's .NET SDK and Runtime on supported Linux machines. You can contribute by submitting your own scripts, also written in Bash, of one of the distros listed in the **To Be Added Section**. You could also update one of the scripts already present in **Currently Working Installer Scripts Section**.

## Contribution Guidelines 
The contribution guideline can be found in the CONTRIBUTING.md file.

## Instructions
- Star this repository
- Fork this repository
- Clone your forked repository
- Add your scripts
- Commit and push
- Create a pull request
- Wait for pull request to be merged
- Celebrate your first step into the open source world and contribute more
- Or if you're an open-source veteran "I thank you for your service. Sincerely."

## Additional tools to help you Get Started with Linux, Bash and Open-Source Contributions

### * Notice - I am not sponsored or payed by anyone and the links to Amazon are just book I have an use constantly.

- [Linux Bible 10th Edition](https://www.amazon.com/Linux-Bible-Christopher-Negus/dp/1119578884/ref=sr_1_1?keywords=Linux+Bible&sr=8-1) 
    - Most of my Linux Knowledge comes from the 9th Edition of this book and Distro Hopping.
- [Linux Pocket Guide: Essential Commands 3rd Edition by Daniel Barrett](https://www.amazon.com/Linux-Pocket-Guide-Essential-Commands/dp/1491927577/ref=sr_1_1?keywords=Linux+Pocket+Guide&sr=8-1)
    - This little pocket guide is more helpful than you will ever know.
- [GNU Bash manual](https://www.gnu.org/software/bash/manual/)
    - The GNU Bash manual is a great reference.
- [How to Contribute to Open Source Projects - A Beginner's Guide](https://www.freecodecamp.org/news/how-to-contribute-to-open-source-projects-beginners-guide/)
    - FreeCodeCamp is open-source and provides a plethora of knowledge, not only about contributions to open-source.
    - I can't recommend them enough.
- [How to Write a Good README file for your GitHub Project](https://www.freecodecamp.org/news/how-to-contribute-to-open-source-projects-beginners-guide/)

## Currently Working Installer Scripts:
### Alpine
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
### Fedora
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
### CentOS
    - centos-installer.sh
        - Supported Versions
            - 7
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
### Debian
    - Supported Versions
        - 12
        - 11
        - 10
### openSUSE
    - Supported Versions
        - 15.4+
### SLES
    - Supported Versions
        - 15
        - 12 SP5
### Ubuntu
    - Supported Versions
        - 20.04 (LTS)
        - 18.04 (LTS)
        - 16.04 (LTS)

