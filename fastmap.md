## NMAP

```
git clone https://github.com/wsbwzfyvt/fastmap.git
cd fastmap
sudo bash install.sh
fastmap <target-ip>
```

## fastmap
```
#!/bin/bash
#fastmap

# Function to display usage instructions
usage() {
    echo "Usage: $0 <IP-TARGET> [-h]"
    echo
    echo "Options:"
    echo "  -h           Display this help message."
    echo
    echo "Description:"
    echo "This script performs a port scan on the target IP using Nmap. It first identifies open ports"
    echo "and then conducts a more detailed scan on those ports. The results are saved in a Markdown (.md)"
    echo "file named after the target IP address."
    exit 0
}

# Check if the user requested help
if [[ "$1" == "-h" ]]; then
    usage
fi

# Verify that an IP address was provided
if [ -z "$1" ]; then
    echo "Error: No IP target provided."
    echo "Use -h for usage instructions."
    exit 1
fi

# Assign the first command-line argument to the variable IP_TARGET
IP_TARGET=$1

# Perform the initial Nmap scan to find open ports
echo "[*] Scanning for open ports on $IP_TARGET..."
ports=$(nmap -Pn -p- --min-rate=1000 -T4 "$IP_TARGET" | \
grep '^[0-9]' | \
cut -d '/' -f 1 | \
tr '\n' ',' | \
sed 's/,$//')

if [ -z "$ports" ]; then
    echo "[!] No open ports found on $IP_TARGET."
    exit 1
fi

# Perform a detailed scan on the open ports
echo "[*] Performing a detailed scan on the open ports ($ports)..."
output_file="${IP_TARGET}.md"
nmap -p"$ports" -Pn -sC -sV "$IP_TARGET" > "$output_file"

# Notify the user of the saved results
echo "[+] Scan completed. Results saved to $output_file"
```

## install.sh
```
#!/bin/bash

# Check if the script is executed as a superuser to allow moving the file to /usr/local/bin
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as a superuser." 1>&2
    exit 1
fi

# Move the script to /usr/local/bin and adjust its permissions
mv fastmap /usr/local/bin/fastmap
chmod +x /usr/local/bin/fastmap

echo "fastmap has been successfully installed and is ready to use."
``` 

## README
### FastMap 

`fastmap` is a shell script tool designed to automate the process of quick port mapping using `nmap`. It starts with a rapid scan of all ports to identify open ports and then performs a detailed scan on those ports to identify services and potential vulnerabilities. The results are saved in an `<target-ip>.md` file in the current directory.
#### Prerequisites

Before using `fastmap`, ensure that `nmap` is installed on your system. `nmap` is available in most Linux distributions and can be installed using the default package manager.
#### Installation

To install `fastmap` on your system and make it executable, follow these steps:

```bash

git clone https://github.com/wsbwzfyvt/fastmap.git

cd fastmap

sudo bash install.sh

```

#### Usage

After installation, you can use `fastmap` directly from any terminal by passing the target IP as an argument:
```bash

fastmap <target_ip>

```

This will initiate the scanning process, and the results will be saved as `<target-ip>.md` in the current directory.
#### Contributions

Contributions are always welcome! If you have any suggestions to improve `fastmap`, feel free to open an issue or submit a pull request on the repository.