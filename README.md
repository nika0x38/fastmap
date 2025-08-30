### FastMap

`fastmap` is a shell script tool designed to automate the process of quick port mapping using `nmap`. It starts with a rapid scan of all ports to identify open ports and then performs a detailed scan on those ports to identify services and potential vulnerabilities. The results are saved in an `<target-ip>.md` file in the current directory.

#### Prerequisites

Before using `fastmap`, ensure that `nmap` is installed on your system. `nmap` is available in most Linux distributions and can be installed using the default package manager. 

#### Installation

To install `fastmap` on your system and make it executable, follow these steps:

```bash
git clone https://github.com/nika0x38/fastmap.git
cd fastmap
chmod +x install.sh && bash install.sh
```

After installation, you may need to restart your terminal or run:

**For Bash users:**
```bash
source ~/.bashrc
```

**For Zsh users:**
```bash
source ~/.zshrc
```

**For other shells:**
```bash
source ~/.profile
```

#### Usage

After installation, you can use `fastmap` directly from any terminal by passing the target IP as an argument:

```bash
fastmap <target_ip>
```

This will initiate the scanning process, and the results will be saved as `<target-ip>.md` in the current directory.

#### Educational Purpose & CTF Usage

This tool is designed for **educational purposes** and **Capture The Flag (CTF)** competitions.

