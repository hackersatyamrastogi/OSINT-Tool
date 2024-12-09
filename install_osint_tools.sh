#!/bin/bash

# OSINT & Reconnaissance Tools Installer
# Author: Your Name
# License: MIT License
# Description: This script automates the installation of various OSINT and reconnaissance tools.

# Exit on error
set -e

# Define tool installation directory
TOOLS_DIR="/opt/osint-tools"

# Define color codes for output
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo -e "${GREEN}Please run this script as root or with sudo.${NC}"
  exit 1
fi

# Update package list and install dependencies
echo -e "${GREEN}Updating package list and installing prerequisites...${NC}"
apt update && apt install -y \
  git python3 python3-pip ruby curl build-essential libssl-dev \
  chromium-browser default-jre

# Create directory for OSINT tools
mkdir -p "$TOOLS_DIR"
cd "$TOOLS_DIR"

# Function to install a tool
install_tool() {
  local name=$1
  local repo_url=$2
  echo -e "${GREEN}Installing $name...${NC}"
  git clone "$repo_url" "$name" && cd "$name"

  # Install dependencies if applicable
  case "$name" in
    "theHarvester"|"creepy"|"recon-ng"|"Spiderfoot")
      pip3 install -r requirements.txt
      ;;
    "github-dorks"|"vcsmap")
      pip3 install -r requirements.txt
      ;;
    "Spiderfoot")
      pip3 install spiderfoot
      ;;
  esac
  cd "$TOOLS_DIR"
}

# List of tools and their repositories
declare -A tools
tools=(
  ["theHarvester"]="https://github.com/laramies/theHarvester.git"
  ["creepy"]="https://github.com/ilektrojohn/creepy.git"
  ["metagoofil"]="https://github.com/opsdisk/metagoofil.git"
  ["GoogleHackingDatabase"]="https://github.com/danielmiessler/SecLists.git"
  ["Censys"]="https://github.com/censys/censys-python.git"
  ["Shodan"]="https://github.com/achillean/shodan-python.git"
  ["recon-ng"]="https://github.com/lanmaster53/recon-ng.git"
  ["github-dorks"]="https://github.com/obheda12/GitDorker.git"
  ["vcsmap"]="https://github.com/melvinsh/vcsmap.git"
  ["Spiderfoot"]="https://github.com/smicallef/spiderfoot.git"
)

# Install tools
for tool in "${!tools[@]}"; do
  install_tool "$tool" "${tools[$tool]}"
done

# Post-installation message
echo -e "${GREEN}All tools installed in $TOOLS_DIR.${NC}"
echo -e "${GREEN}To use the tools, navigate to their respective directories.${NC}"
