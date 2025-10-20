### FastMap

`fastmap` is a shell script tool designed to automate the process of quick port mapping using `nmap`. It starts with a rapid scan of all ports to identify open ports and then performs a detailed scan on those ports to identify services and potential vulnerabilities. The results are saved in an `<target-ip>.txt` file in the current directory.

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

After installation, you can use `fastmap` directly from any terminal:

```bash
fastmap <target_ip>
fastmap -u <target_ip>
fastmap -h
fastmap -6
```

- `fastmap <target_ip>` performs the original TCP workflow: a fast sweep of all ports followed by detailed service detection on anything open.
- `fastmap -u <target_ip>` runs the TCP workflow and adds a UDP top-ports 1000 scan. Sudo required.
- `fastmap -6 <target_ip>` runs the TCP workflow on ipv6. Can be used with -u.
- `fastmap -h` displays the built-in help message.

All scan results are saved as `<target-ip>.txt` in the current directory, with separate sections for TCP and UDP when both scans are executed.

#### Educational Purpose & CTF Usage

This tool is designed for **educational purposes** and **Capture The Flag (CTF)** competitions.

