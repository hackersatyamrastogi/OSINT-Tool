# OSINT & Reconnaissance Tools Installer

A comprehensive Bash script to automate the installation of OSINT (Open Source Intelligence) and reconnaissance tools. These tools are essential for security analysts, penetration testers, and cybersecurity enthusiasts to gather intelligence and perform reconnaissance tasks.

---

## Features

- **Automated Installation:** Downloads and installs tools with their dependencies.
- **Directory Management:** Tools are installed into `/opt/osint-tools`.
- **Supported Tools:**
  - **[Maltego](https://www.maltego.com/):** Proprietary tool for OSINT and forensics.
  - **[theHarvester](https://github.com/laramies/theHarvester):** Email, subdomain, and people names harvester.
  - **[creepy](https://github.com/ilektrojohn/creepy):** Geolocation OSINT tool.
  - **[metagoofil](https://github.com/opsdisk/metagoofil):** Metadata harvester.
  - **[Google Hacking Database](https://github.com/danielmiessler/SecLists):** Database of Google dorks for reconnaissance.
  - **[Censys](https://github.com/censys/censys-python):** Internet host and website scanner.
  - **[Shodan](https://github.com/achillean/shodan-python):** Internet-connected devices search engine.
  - **[recon-ng](https://github.com/lanmaster53/recon-ng):** Web reconnaissance framework.
  - **[github-dorks](https://github.com/obheda12/GitDorker):** Scan GitHub for sensitive data.
  - **[vcsmap](https://github.com/melvinsh/vcsmap):** Scans public VCS for sensitive information.
  - **[Spiderfoot](https://github.com/smicallef/spiderfoot):** Multi-source OSINT automation tool.

---

## Prerequisites

- **Operating System:** Linux (Debian-based, e.g., Ubuntu).
- **Root Privileges:** Required to install system dependencies and manage directories.
- **Internet Connection:** Required for downloading tools and dependencies.

---

## Installation Steps

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/osint-tools-installer.git
   cd osint-tools-installer
