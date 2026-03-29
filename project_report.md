# Open Source Audit: Git Version Control System
### Project Report — Open Source Software (NGMC)

---

| Field | Details |
|-------|---------|
| **Student Name** | Isha Soni |
| **Registration Number** | 24BCG10022 |
| **Chosen Software** | Git — Distributed Version Control System |
| **License** | GNU General Public License v2 (GPL v2) |
| **Institution** | Vellore Institute of Technology (VIT), Bhopal |
| **Submission Date** | 31 March 2026 |

---

## Table of Contents

- [Executive Summary](#executive-summary)
- [Part A — Origin and Philosophy](#part-a--origin-and-philosophy)
  - [A1. The Problem Git Was Created to Solve](#a1-the-problem-git-was-created-to-solve)
  - [A2. The License — What It Actually Says](#a2-the-license--what-it-actually-says)
  - [A3. The Ethics of Open Source](#a3-the-ethics-of-open-source)
- [Part B — Linux Footprint](#part-b--linux-footprint)
- [Part C — The FOSS Ecosystem](#part-c--the-foss-ecosystem)
- [Part D — Git vs Proprietary Alternatives](#part-d--git-vs-proprietary-alternatives)
- [Conclusion](#conclusion)

---

## Executive Summary

Before starting this project, I used Git every day without really thinking about it. `git add`, `git commit`, `git push` — just commands I typed automatically. This audit forced me to stop and actually ask: where did this tool come from? Who built it? And why does it matter that it's free?

What I found was genuinely surprising. Git wasn't born in a corporate lab with a product roadmap. It was born out of frustration — a developer's refusal to be held hostage by a proprietary tool. That origin shapes everything about how Git works and why it's licensed the way it is.

This report covers Git's full story: the crisis that created it, the license that protects it, how it lives on a Linux system, the ecosystem it built around itself, and how it stacks up against the alternatives.

---

## Part A — Origin and Philosophy

### A1. The Problem Git Was Created to Solve

To understand Git, you have to go back to 2005 and understand what a mess the Linux kernel project was in.

At the time, thousands of developers around the world were contributing code to Linux. Managing all of that — who changed what, when, which version is stable — required a version control system. The team was using **BitKeeper**, a proprietary tool made by a company called BitMover. BitMover had been generous enough to give the Linux project free access. It worked well. Everyone was happy.

Then it fell apart.

A developer named Andrew Tridgell tried to reverse-engineer BitKeeper's protocol — essentially, figure out how it worked under the hood. BitMover's founder Larry McVoy saw this as a violation of the agreement and pulled the free licenses. Just like that, one of the most important open-source projects in the world was left without its core tool.

This put Linus Torvalds in an impossible position. He needed a version control system that was fast, could handle thousands of contributors, and — this was the part that really mattered now — could never be taken away. No more depending on a company's generosity.

So he built one himself. In about two weeks.

That might sound unbelievable, but Linus knew exactly what he needed because he'd been living with the problem. Git wasn't built by a committee following a spec — it was built by someone who was genuinely angry and genuinely capable of fixing the thing that made him angry.

Git solved problems that existing tools had never really cracked:

| Problem | What Git Did Differently |
|---------|--------------------------|
| **Central server = single point of failure** | Every developer gets a full copy of the entire history. No server needed for most operations. |
| **Slow, network-dependent operations** | Branching, history lookups, diffs — all happen locally, instantly |
| **No way to verify history hasn't been tampered with** | Every commit gets a SHA-1 hash. Change one byte anywhere and the hash changes — manipulation is detectable |

The irony is beautiful: the tool that now underlies almost all software development worldwide was built because a proprietary company got greedy. Git is, in a very direct sense, a monument to why open source matters.

---

### A2. The License — What It Actually Says

Git is released under **GPL v2** — the GNU General Public License, version 2. This is one of the most significant software licenses ever written, and it's worth understanding what it actually says rather than just knowing the name.

At its core, GPL v2 protects four freedoms:

| Freedom | What It Actually Means in Practice |
|---------|-------------------------------------|
| **Freedom 0** | You can run Git for literally any purpose — personal, commercial, whatever |
| **Freedom 1** | You can read the source code, understand how it works, and change it |
| **Freedom 2** | You can share copies with anyone |
| **Freedom 3** | You can distribute your own modified version — but you must keep it open |

That last point is the key one. It's what makes GPL different from more permissive licenses like MIT.

With an **MIT license**, a company can take the code, modify it, build something proprietary on top of it, and never share anything back. You gave them your work for free and they can lock it away. With **GPL v2**, they can't do that. If they distribute a modified version, they have to give users the source code and the same freedoms. The license is "viral" — it forces openness to propagate downstream.

This is what people mean by **copyleft**. It's not about restricting use — it's about ensuring that nobody downstream can restrict it either.

There's a phrase that captures this well: *"free as in free speech, not free beer."* With Git you actually get both — you don't pay for it (free beer) and you have genuine freedom to use, study, and modify it (free speech). But the freedom is the more important part. The fact that it doesn't cost money is almost a side effect.

**Why did GPL v2 specifically make sense for Git?**

Because Git was built precisely because a proprietary tool had failed the open-source community. Choosing a license that could allow the same thing to happen again would have been almost contradictory. GPL v2 makes it legally impossible for someone to take Git, improve it privately, and lock the community out of those improvements.

---

### A3. The Ethics of Open Source

This section is the one where I'm supposed to share my own thinking rather than just report facts, so I'll try to be honest rather than just safe.

**Should all software be open source?**

My instinct is to say yes, but I don't think that's actually a defensible position when I think it through.

The case for open source is strong: when code is visible, bugs get found faster, security vulnerabilities get patched more quickly, and developers can learn from each other instead of constantly reinventing things. The Linux kernel has thousands of eyes on it — that's genuinely better for security than any proprietary alternative could be.

But software doesn't write itself. Someone has to pay the engineers. For certain kinds of software — especially things like enterprise tools, medical software, or anything requiring years of specialised research — the proprietary model exists because it funds the work. Without the possibility of selling the product, some of that software might simply not get made.

The more honest answer is: **it depends on what the software is for.** Infrastructure that everyone depends on — operating systems, compilers, version control, databases — probably should be open. Tools that represent genuine competitive differentiation for a specific business — maybe not. The question isn't ideological, it's practical.

**Is it ethical for companies to profit from open-source work?**

This one is more complicated than it looks.

Companies like Google, Meta, and Microsoft have made billions partly because they can run Linux for free. They've built products on open-source foundations that they would have had to pay enormous amounts to build themselves. From one angle, this looks like exploitation — volunteers donate their time, corporations pocket the profit.

But I think that framing misses something. The developers who contributed to Linux did so knowing it was GPL. They chose that license deliberately. They weren't naive about companies using it — they were counting on it. The whole point of making Linux free was to get it everywhere. Mission accomplished.

What does become unethical is when companies take without ever giving back. The GPL is designed to prevent the worst version of this, but even within MIT-licensed projects, there's a social expectation of contribution. Companies that only consume and never contribute are, in my view, acting badly — not illegally, but in bad faith toward a community that trusted them.

**Does open source help or hurt innovation?**

Both, honestly.

Open source accelerates innovation in areas where sharing is more valuable than secrecy. The entire modern AI/ML ecosystem runs on open-source tools — PyTorch, TensorFlow, Hugging Face. Web development is built on open-source foundations. These fields move fast partly because nobody is hiding their work.

But proprietary incentives also drive real innovation. Pharmaceutical companies spend billions on research that open-source models couldn't fund. Some problems require investment that only the promise of profit can attract.

My view: the open-source model is genuinely superior for tools that are infrastructure — things everyone builds on top of. For end products, especially ones requiring massive upfront investment, proprietary models still have a place. The mistake is treating this as an either/or question. The real world needs both.

---

## Part B — Linux Footprint

### Installation

Getting Git onto a Linux system is one line:

```bash
sudo apt-get install git
```

That's it. The package manager pulls Git from Debian's verified repositories, checks the cryptographic signatures to make sure nothing has been tampered with, and installs everything including the documentation. No downloading random installers from a website. No clicking through a wizard. Just one command, and it's done.

This is actually one of the underappreciated advantages of the Linux/open-source ecosystem — package management means software arrives through a trusted, verified channel, and updates come through the same channel automatically.

### Where Git Lives on a Linux System

Once installed, Git spreads itself across several standard Linux directories, each with a specific purpose:

| Path | What's There |
|------|-------------|
| `/usr/bin/git` | The main executable — what runs when you type `git` |
| `/usr/share/man/man1/git.1.gz` | The manual pages (`man git` reads this) |
| `/etc/gitconfig` | System-wide config — applies to every user on the machine |
| `~/.gitconfig` | Your personal config — name, email, preferred editor |
| `.git/` (inside any repo) | Everything Git knows about that project — full history, branches, remotes |

The `.git/` folder is particularly interesting. It contains the entire history of a project. Delete it and you lose everything Git knows. That folder is the repository — the working files around it are just a checkout.

### Who Runs Git?

This is different from most server software. Apache runs as the `www-data` user. MySQL runs as `mysql`. These daemons need their own users for security isolation.

Git doesn't work like that. Git runs as **you**. When you type `git commit`, Git executes with your user permissions — it can access whatever you can access, nothing more. There's no `git` system user, no background process, no service to start or stop.

This makes sense when you think about what Git actually is. It's not a server. It's a tool. It starts when you call it, does its job, and exits. The only time Git ever runs as a different user is if you're running a Git server (like self-hosted GitLab), but that's a separate application.

### Staying Up to Date

```bash
sudo apt update      # Check what's available
sudo apt upgrade     # Install updates
```

Security patches flow through the same package manager that installed Git in the first place. You don't have to go hunting for updates, check a changelog manually, or trust a third-party update mechanism. The distribution maintainers verify each update before it reaches you.

---

## Part C — The FOSS Ecosystem

### What Git Depends On

Git doesn't do everything itself. When you install it, several other libraries come along as dependencies:

| Library | Licence | What It Does for Git |
|---------|---------|----------------------|
| `libcurl` | MIT | Handles the HTTP/HTTPS connections for `git push` and `git pull` |
| `OpenSSL` | Apache 2.0 | Encrypts those connections so your code isn't sent in plaintext |
| `zlib` | zlib | Compresses repository data — this is why `.git` folders are smaller than you'd expect |
| `libc` | LGPL | The C standard library — basic functions that almost every Linux program needs |

This is the open-source ecosystem in miniature. Git doesn't reinvent networking or encryption — it uses libraries that already exist, that other projects already rely on, that other communities already maintain. Everyone builds on everyone else's work.

### What Git Made Possible

Git's impact went far beyond version control. It changed how developers collaborate:

- **GitHub (2008)** — Took Git and made it social. Pull requests, issues, stars, forks — GitHub turned version control into a platform. Microsoft bought it for $7.5 billion in 2018, which tells you something about how valuable it became.
- **GitLab (2013)** — The open-source answer to GitHub. Companies that don't want their code on Microsoft's servers can run their own GitLab instance.
- **Gitea (2016)** — An even lighter self-hosted option, popular with small teams and personal projects.
- **Mercurial** — Not inspired by Git but a contemporary competitor. Worth mentioning because it shows Git's dominance wasn't inevitable — there were alternatives, and Git won.

### The People Behind Git

Git is maintained by a global community, but the day-to-day leadership has been remarkably stable. **Junio C. Hamano** has been the primary maintainer since Linus handed it off in 2005. He reviews patches, manages releases, and keeps the project moving.

There's no board of directors, no product committee, no quarterly roadmap presentation. Decisions get made through mailing lists and public discussion. Someone proposes a change, other developers argue about it, consensus emerges (or doesn't), and the patch gets applied or rejected. It sounds chaotic but it has produced one of the most reliable pieces of software in existence.

### Git in the Real World Workflow

In a typical modern development setup, Git is the connective tissue holding everything together:

| Step | What Happens |
|------|-------------|
| **1** | You write code locally and commit with Git |
| **2** | You push to GitHub or GitLab |
| **3** | Automated tests run immediately on your push |
| **4** | If tests pass, code gets deployed to a Linux server |
| **5** | Every deployed version is traceable back to a specific Git commit |

Remove Git from that pipeline and the whole thing falls apart. You can't reliably coordinate multiple developers, you can't roll back bad deployments, you can't trace production bugs to their source. Git isn't a nice-to-have in modern development — it's load-bearing.

---

## Part D — Git vs Proprietary Alternatives

### Head-to-Head Comparison

| Dimension | Git | Perforce | SVN |
|-----------|-----|----------|-----|
| **Cost** | Free | Thousands per user | Free |
| **Architecture** | Distributed | Centralised | Centralised |
| **Speed** | Very fast | Slow for large files | Medium |
| **Branching** | Instant, cheap | Slow and expensive | Slow |
| **Scalability** | Excellent | Good for binary files | Limited |
| **Community** | Enormous | Corporate | Shrinking |
| **Who uses it** | ~95% of developers | Game studios, large enterprises | Legacy projects |
| **Source available?** | Yes, fully | No | Yes |

### Git vs Perforce

Perforce has been around since 1995 and it genuinely excels at one thing: handling massive binary files. Game studios use it because a game project might have hundreds of gigabytes of art assets, and Git handles large binaries poorly.

But for most software development, the comparison isn't close. Perforce costs thousands of dollars per user per year. It requires a central server. Branching is slow and expensive. And because it's proprietary, you're entirely dependent on Perforce the company — if they raise prices, change the product, or go under, you have a problem.

For a game studio with 50 artists and 200GB of textures — maybe Perforce makes sense. For a web team building an application — Git isn't even a competition.

### Git vs SVN

SVN was the dominant version control system before Git. A lot of legacy codebases still use it, and it's not bad software — it's just a different model.

SVN is centralised. There's one server, everyone commits to it, and if the server is down you can't commit. SVN's branching is technically possible but expensive in practice — developers avoided it because it was slow.

Git made branching so cheap and fast that it changed how people think about development. Feature branches, experimental branches, hotfix branches — these workflows exist because Git made them practical. SVN's model didn't really support that.

Most teams that were on SVN have moved to Git. The migration happened gradually over about ten years, and it's largely complete. SVN survives in places where the cost of migrating an old codebase isn't worth it.

### Git vs Mercurial

This one is interesting because Mercurial is actually a pretty good system. It was created around the same time as Git, also distributed, with a cleaner command-line interface that some developers genuinely prefer.

But Git won. Not because it was dramatically better, but because GitHub happened. GitHub launched in 2008 built around Git, and it became the default place to host open-source projects. Network effects took over from there. Once most projects were on GitHub using Git, there was less and less reason to use anything else.

This is a lesson in how ecosystems work. The best technology doesn't always win — the technology with the best ecosystem often does.

### Verdict

If I were picking a version control system for a new project today, I would choose Git immediately and without much deliberation. Not because it's perfect — Git's interface has real rough edges, and some of its concepts take time to internalise — but because the ecosystem around it is irreplaceable.

Every CI/CD tool, every deployment platform, every code review system, every IDE plugin assumes you're using Git. Choosing anything else means swimming against a very strong current.

Would I contribute to Git itself? Honestly, probably not at this stage of my career — the Git codebase is complex and the bar for contributions is high. But I'd contribute to tools built on top of Git, and I'd make sure that any code I write ends up in a Git repository where others can find and use it.

---

## Conclusion

When I started this project, Git was just a tool I used. Now it means something more to me.

What I find genuinely interesting about Git's story is that it wasn't designed to be world-changing. Linus built it to solve an immediate, practical problem — he needed a version control system and didn't have one. The fact that it became the foundation of almost all software development was a consequence of it being good and free, not a goal anyone planned for.

That's actually a pattern in open-source software. The tools that end up mattering most aren't the ones built with grand ambitions — they're the ones built by people who had a real problem and shared their solution. Linux started as a hobby project. Python was written by someone who wanted a better scripting language. Git was written in two weeks of frustration.

The GPL v2 license Linus chose for Git reflects the lesson he learned from the BitKeeper incident: if something is going to be critical infrastructure, it needs to be owned by everyone. Not by a company that can change its mind. Not by a single maintainer who might walk away. By the community — protected legally so that no future decision by any single entity can take it away.

That seems right to me. The tools we all build on top of should belong to all of us.

---

<div align="center">

**Isha Soni** · 24BCG10022 · VIT Bhopal
Open Source Software (NGMC) · 31 March 2026

*"The code you write today stands on decades of open-source work. Know where it comes from."*

</div>
