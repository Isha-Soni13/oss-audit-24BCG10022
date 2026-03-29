# 🔧 Open Source Audit: Git Version Control System

| Field | Details |
|-------|---------|
| **Course** | Open Source Software (NGMC) |
| **Student** | Isha Soni |
| **Roll Number** | 24BCG10022 |
| **Subject of Study** | Git — Distributed Version Control System |
| **License** | GNU General Public License v2 (GPL v2) |
| **Submission Date** | 31 March 2026 |

---

## 📌 About This Audit

I chose **Git** because it's the invisible backbone of software development. Everyone uses it. Nobody questions it. But almost nobody understands *why it exists* or *what problem it solved.*

This project is my investigation into Git's origin story, its philosophy, and why it matters that you understand open-source software.

Beyond the report, I've built five practical shell scripts that demonstrate real Linux skills — not just theory, but actual system administration and scripting techniques.

---

## 📂 What You'll Find Here

**The Scripts** — Five working demonstrations of Linux fundamentals:
- System identification and environment reporting
- Package detection and open-source philosophy notes
- Directory auditing with permission analysis
- Log file parsing and keyword analysis
- Interactive manifesto generation

**The Report** — A 12–16 page analysis covering:
- Why Linus Torvalds built Git in 2005
- How GPL v2 licensing works and what it guarantees
- The ethical implications of open-source software
- Git's footprint on Linux systems
- The FOSS ecosystem that Git depends on
- Honest comparison with Perforce, SVN, and Mercurial

---

## ⚙️ Prerequisites

**Required:**
- Any Linux distribution (Ubuntu 20+, CentOS 7+, Fedora, etc.)
- Bash shell (version 4.0 or higher)
- Standard Unix utilities (pre-installed on all Linux systems)

**Optional but Recommended:**
- Git installed (to clone this repo)

**Installation:**

```bash
# Ubuntu/Debian
sudo apt-get update
sudo apt-get install -y git

# CentOS/RHEL
sudo yum install -y git

# macOS
brew install git
```

**Verify installation:**
```bash
git --version
bash --version
```

---

## 🗂️ Repository Structure

```
oss-audit-24BCG10022/
│
├── README.md                        # Documentation (this file)
├── project_report.pdf               # Complete analysis with screenshots
│
├── script1_system_identity.sh       # Linux system information display
├── script2_package_inspector.sh     # Git installation and philosophy check
├── script3_disk_auditor.sh          # Directory and permission auditing
├── script4_log_analyzer.sh          # Log file analysis tool
└── script5_manifesto_generator.sh   # Personal philosophy statement creator
```

---

## 📜 The Scripts Explained

### Script 1 — System Identity Report
> **Purpose:** Display comprehensive Linux system information with open-source context

Shows: OS & kernel details · Current user & home directory · System uptime & timestamp · Open-source license message

**Concepts used:** Variables, command substitution `$()`, `echo` formatting, `date`

```bash
./script1_system_identity.sh
```

---

### Script 2 — FOSS Package Inspector
> **Purpose:** Check Git installation status and provide licensing information

Shows: Whether Git is installed · Version & package metadata · License type · Open-source freedom context

**Concepts used:** `if/then/else`, `case` statement, `rpm`/`dpkg`, `grep`

```bash
./script2_package_inspector.sh
```

---

### Script 3 — Disk and Permission Auditor
> **Purpose:** Audit system directories for usage and security permissions

Shows: Directory sizes (human-readable) · File permissions (rwx) · Owner & group · Git config locations

**Concepts used:** Arrays, `for` loop, `awk`, `cut`, `du`, `ls -ld`

```bash
./script3_disk_auditor.sh
```

---

### Script 4 — Log File Analyzer
> **Purpose:** Parse log files and count keyword occurrences

Shows: Line-by-line log reading · Keyword match count · Last 5 matching lines · Match percentage summary

**Concepts used:** `while read` loop, `if-then`, counter variables, `$1`/`$2` arguments

```bash
./script4_log_analyzer.sh [logfile] [keyword]

# Examples:
./script4_log_analyzer.sh /var/log/syslog error
./script4_log_analyzer.sh /var/log/auth.log failed
./script4_log_analyzer.sh /var/log/kern.log warning
```

---

### Script 5 — Open Source Manifesto Generator
> **Purpose:** Create a personalized open-source philosophy statement

Does: Prompts three questions interactively · Generates a custom manifesto · Saves output with timestamp to a `.txt` file

**Concepts used:** `read` input, string concatenation, `>` / `>>` file I/O, `date`, `mkdir`

```bash
./script5_manifesto_generator.sh
```

The script will ask:
1. Which open-source tool do you use daily?
2. What does "freedom" mean to you?
3. What would you build and share freely?

---

## 🚀 Getting Started

**1. Clone this repository:**
```bash
git clone https://github.com/Isha-Soni13/oss-audit-24BCG10022.git
cd oss-audit-24BCG10022
```

**2. Make scripts executable:**
```bash
chmod +x script*.sh
```

**3. Run all scripts:**
```bash
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto_generator.sh
```

---

## 🛠️ Common Issues & Solutions

**"Permission denied" when running scripts**
```bash
chmod +x script*.sh
```

**Script 4 can't find the log file**
```bash
ls -la /var/log/                                      # check available logs
./script4_log_analyzer.sh /var/log/syslog error       # use an existing file
```

**Git is not installed**
```bash
sudo apt-get install git    # Ubuntu/Debian
sudo yum install git        # CentOS/RHEL
brew install git            # macOS
```

**Output looks strange (broken box characters)**
Make sure you're using a modern terminal emulator that supports Unicode (e.g. GNOME Terminal, iTerm2, Windows Terminal).

---

## 📖 The Project Report

The accompanying PDF explores four major areas:

| Part | Title | Key Questions |
|------|-------|---------------|
| **A** | The Story of Git | Why did Linus build Git? What was the BitKeeper crisis? How does GPL v2 protect freedom? |
| **B** | Git on Linux | Where does Git install? What permissions matter? How do security updates work? |
| **C** | The Broader Ecosystem | What does Git depend on? What did it inspire? Who maintains it? |
| **D** | Competitive Analysis | How does Git compare to Perforce, SVN, and Mercurial? |

---

## 💡 Why This Project Matters

Most developers use Git without understanding its origins. They don't know:

- **Why it exists** — BitKeeper's proprietary licensing triggered its creation
- **What freedoms they have** — GPL v2 guarantees four specific rights
- **What they're responsible for** — copyleft means modifications must be shared
- **The bigger picture** — Git represents community ownership of critical tools

This audit bridges that gap. It's not just *"how to use Git"* — it's *"why Git exists and what that means."*

---

## 🔗 Resources Used

- [GNU Free Software Philosophy](https://gnu.org/philosophy/free-sw.html)
- [Open Source Initiative Definition](https://opensource.org/osd)
- [Official Git Documentation](https://git-scm.com/doc)
- *Just for Fun* — Linus Torvalds (autobiography)
- *The Cathedral and the Bazaar* — Eric S. Raymond

---

## ⚖️ License

This project is released under **GPL v2** — the same license as Git itself.

You are free to: use · study · modify · share — and those freedoms extend to anyone who receives your modifications. That's the essence of copyleft.

---

## 💬 Final Thoughts

Every line of code in the modern world depends on open-source foundations. Understanding those foundations — their history, philosophy, and licensing — is as important as knowing how to write code itself.

Git is more than a version control system. It's a statement about how software should be developed: **collaboratively, transparently, and freely.**

---

<div align="center">

**Isha Soni** · Roll No. 24BCG10022 · VIT Bhopal University 

*"The code you write today stands on decades of open-source work. Know where it comes from."*

</div>
