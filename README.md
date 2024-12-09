**How to Use the Script**
Download and Save the Script: Save the script as install_osint_tools.sh.

**Make the Script Executable:**
chmod +x install_osint_tools.sh
**Run the Script:**
sudo ./install_osint_tools.sh

**Notes for Each Tool**
Tool	Installation Notes/Links
Maltego	Requires separate manual installation from official website.
theHarvester	Installs via Python dependencies.
creepy	Installs via Python dependencies.
metagoofil	Metadata harvester available on GitHub.
GoogleHackingDatabase	Uses the SecLists repository for Google Dorks.
Censys	Python library installation from the official repository.
Shodan	Python library installation from the official repository.
recon-ng	Comprehensive Python-based reconnaissance framework.
github-dorks	CLI tool to scan GitHub repositories for sensitive data leaks.
vcsmap	Scans version control systems for sensitive information.
Spiderfoot	Multi-source OSINT tool with web UI and visualization.

**Additional Information**
Directory: All tools are installed into /opt/osint-tools. Navigate there to use the tools.
Dependencies: The script installs dependencies for most tools. For tool-specific instructions, refer to their respective repositories.
Maltego: Due to its proprietary nature, Maltego requires manual installation.
Let me know if you need further refinements!
