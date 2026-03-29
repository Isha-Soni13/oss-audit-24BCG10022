Open Source Audit: Git Version Control System
Course: Open Source Software (NGMC)  
Student: Isha Soni  
Roll Number: 24BCG10022  
Subject of Study: Git - Distributed Version Control System  
License: GNU General Public License v2 (GPL v2)  
Submission Date: 31 March 2026
---
About This Audit
I chose Git because it's the invisible backbone of software development. Everyone uses it. Nobody questions it. But almost nobody understands why it exists or what problem it solved.
This project is my investigation into Git's origin story, its philosophy, and why it matters that you understand open-source software.
Beyond the report, I've built five practical shell scripts that demonstrate real Linux skills — not just theory, but actual system administration and scripting techniques.
---
What You'll Find Here
This repository contains:
The Scripts — Five working demonstrations of Linux fundamentals:
System identification and environment reporting
Package detection and open-source philosophy notes
Directory auditing with permission analysis
Log file parsing and keyword analysis
Interactive manifesto generation
The Report — A 12-16 page analysis covering:
Why Linus Torvalds built Git in 2005
How GPL v2 licensing works and what it guarantees
The ethical implications of open-source software
Git's footprint on Linux systems
The FOSS ecosystem that Git depends on
Honest comparison with Perforce, SVN, and Mercurial
---
Prerequisites
Required:
Any Linux distribution (Ubuntu 20+, CentOS 7+, Fedora, etc.)
Bash shell (version 4.0 or higher)
Standard Unix utilities (pre-installed on all Linux systems)
Optional but Recommended:
Git installed (to clone this repo)
Installation:
For Ubuntu/Debian:
```bash
sudo apt-get update
sudo apt-get install -y git
```
For CentOS/RHEL:
```bash
sudo yum install -y git
```
For macOS:
```bash
brew install git
```
Verify installation:
```bash
git --version
bash --version
```
---
Repository Structure
```
oss-audit-24BCG10022/
│
├── README.md                          # Documentation (this file)
├── project_report.pdf                 # Complete analysis with screenshots
│
├── script1_system_identity.sh          # Linux system information display
├── script2_package_inspector.sh        # Git installation and philosophy check
├── script3_disk_auditor.sh             # Directory and permission auditing
├── script4_log_analyzer.sh             # Log file analysis tool
└── script5_manifesto_generator.sh      # Personal philosophy statement creator
```
---
The Scripts Explained
Script 1: System Identity Report
Purpose: Display comprehensive Linux system information with open-source context
This script shows:
Operating system and kernel details
Current user and home directory
System uptime and current timestamp
Open-source philosophy message
Shell Concepts: Variables, command substitution, echo formatting, date/time commands
Run: `./script1_system_identity.sh`
---
Script 2: FOSS Package Inspector
Purpose: Check Git installation status and provide licensing information
This script checks:
Whether Git is installed on your system
Git version and package information
License type and obligations
Context about open-source freedom
Shell Concepts: Conditional statements (if/then/else), case statements, package managers
Run: `./script2_package_inspector.sh`
---
Script 3: Disk and Permission Auditor
Purpose: Audit system directories for usage and security permissions
This script analyzes:
Directory sizes in human-readable format
File permissions (rwx notation)
Ownership and group information
Git-specific configuration locations
Shell Concepts: Arrays, loops, awk, cut, du commands, string manipulation
Run: `./script3_disk_auditor.sh`
---
Script 4: Log File Analyzer
Purpose: Parse log files and count keyword occurrences
This script performs:
Line-by-line log file reading
Keyword matching and counting
Result summary with statistics
Shell Concepts: While loops, read command, conditional logic, string operations, arithmetic
Usage: `./script4_log_analyzer.sh [logfile] [keyword]`
Examples:
```bash
./script4_log_analyzer.sh /var/log/syslog error
./script4_log_analyzer.sh /var/log/auth.log failed
./script4_log_analyzer.sh /var/log/kern.log warning
```
---
Script 5: Open Source Manifesto Generator
Purpose: Create a personalized open-source philosophy statement
This script:
Prompts for three personal inputs
Generates a custom manifesto
Saves output with timestamp to a file
Shell Concepts: User input (read), file I/O, string concatenation, date manipulation, mkdir operations
Run: `./script5_manifesto_generator.sh`
The script will ask:
Which open-source tool do you use daily?
What does "freedom" mean to you?
What would you build and share?
---
Getting Started
Clone this repository:
```bash
git clone https://github.com/Isha-Soni13/oss-audit-24BCG10022.git
cd oss-audit-24BCG10022
```
Make scripts executable:
```bash
chmod +x script*.sh
```
Run all scripts to test:
```bash
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```
---
Common Issues & Solutions
Scripts show "Permission denied"
```bash
chmod +x script*.sh
```
This makes all scripts executable.
Script 4 can't find the log file
Check available logs first:
```bash
ls -la /var/log/
```
Then use an existing file:
```bash
./script4_log_analyzer.sh /var/log/syslog error
```
Git is not installed
```bash
sudo apt-get install git        # Ubuntu/Debian
sudo yum install git            # CentOS/RHEL
brew install git                # macOS
```
Scripts work but output looks strange
Make sure you're using a modern terminal. Some older terminal emulators don't support Unicode characters.
---
The Project Report

The accompanying PDF report explores four major areas:
Part A: The Story of Git (Origins & Philosophy)
Why did Linus Torvalds create Git? What was the BitKeeper crisis? How does GPL v2 protect your freedom? What are the ethical implications of open-source software development?
Part B: Git on Linux (System Integration)
Where does Git install on Linux? What files does it use? What permissions matter? How do security updates work?
Part C: The Broader Ecosystem (Dependencies & Impact)
What libraries does Git depend on? What projects did Git inspire? How does Git fit into web development workflows? Who maintains Git?
Part D: Competitive Analysis (Alternatives & Verdict)
How does Git compare to Perforce, SVN, and Mercurial? When would you choose alternatives? What makes Git the dominant choice?
---
Why This Project Matters

Most developers use Git without understanding its origins or implications. They don't know:
Why it exists (BitKeeper's proprietary licensing triggered its creation)
What freedoms they have (GPL v2 guarantees four specific rights)
What they're responsible for (copyleft means your modifications must be shared)
How it connects to broader principles (Git represents community ownership of critical tools)
This audit bridges that gap. It's not just "how to use Git." It's "why Git exists and what that means for software development."
---
Resources Used

GNU Free Software Philosophy — https://gnu.org/philosophy/free-sw.html
The Open Source Initiative Definition — https://opensource.org/osd
Official Git Documentation — https://git-scm.com/doc
"Just for Fun" by Linus Torvalds — First-hand account of Linux and Git creation
"The Cathedral and the Bazaar" by Eric S. Raymond — Classic essay on open-source development
---
License

This project is released under GPL v2, the same license as Git itself.
This means you can:
Use this project for any purpose
Read and study the source code
Modify it for your needs
Share your improvements with others
The freedom extends to anyone who receives your modifications — that's the essence of copyleft.
---
Final Thoughts

Every line of code in the modern world depends on open-source foundations. Understanding those foundations — their history, philosophy, and licensing — is as important as knowing how to write code itself.
Git is more than a version control system. It's a statement about how software should be developed: collaboratively, transparently, and freely.
---
Isha Soni  
Roll Number: 24BCG10022  
VIT Bhopal Campus

"The code you write today stands on decades of open-source work. Know where it comes from."
