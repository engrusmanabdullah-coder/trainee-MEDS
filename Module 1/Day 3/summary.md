# MEDS Module 1 — Day 3 Git Hands-on Summary

## Overview

This document summarizes all Git hands-on exercises completed in Day 3, covering repository setup, version control operations, branching, diffing, and debugging using Git tools.

---

## Task 1 — Local Repository Setup

* Created local repository: `meds-module1`
* Initialized Git repository using `git init`
* Added `README.md` with name and student ID
* Performed 5 meaningful commits:

  * README file creation
  * Day 1 notes
  * Day 2 notes
  * Day 3 notes
  * Verilog module file
* Visualized commit history using:

  ```bash
  git log --oneline --graph
  ```

---

## Task 2 — `.gitignore` for Hardware Project

* Created `.gitignore` for Verilog/SystemVerilog project
* Ignored:

  * Simulation files (`.vcd`, `.log`, `.out`)
  * Build directories (`build/`, `sim/`)
  * Temporary files (`.tmp`, `.swp`)
* Verified ignored files using:

  ```bash
  git status
  ```
* Confirmed only relevant files are tracked

---

## Task 3 — GitHub Integration (SSH Push)

* Generated SSH key using `ssh-keygen`
* Added SSH key to GitHub account
* Tested SSH authentication
* Created GitHub repository: `meds-module1`
* Connected local repo to remote using:

  ```bash
  git remote add origin <repo-url>
  ```
* Pushed local commits to GitHub using:

  ```bash
  git push -u origin main
  ```

---

## Task 4 — Git Diff & Restore

* Modified `README.md`
* Viewed unstaged changes:

  ```bash
  git diff
  ```
* Staged changes:

  ```bash
  git add .
  ```
* Viewed staged changes:

  ```bash
  git diff --staged
  ```
* Unstaged files using:

  ```bash
  git restore --staged <file>
  ```

---

## Task 5 — Branching & Divergence

* Created branches:

  * `feature1`
  * `feature2`
* Made separate commits in each branch
* Switched between branches using:

  ```bash
  git checkout
  ```
* Visualized branching history:

  ```bash
  git log --all --graph --oneline
  ```
* Observed divergence in commit history

---

## Task 6 — Git Blame Analysis

* Cloned public repository:

  ```bash
  git clone <repo-url>
  ```
* Entered repository directory
* Used `git blame` to trace line-level authorship:

  ```bash
  git blame <file>
  ```
* Identified:

  * Author of each line
  * Commit hash
  * Timestamp of changes

---

## Conclusion

This module provided hands-on experience with:

* Git repository management
* Version control workflow
* Staging and diffing
* Branching strategies
* Collaboration tools (GitHub + SSH)
* Code tracing using Git blame

These skills form the foundation of professional software development workflows.
