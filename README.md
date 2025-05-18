### shell_script

# Custom Installation Script
## day 1

This script provides an easy way to install packages across different operating systems (Linux, macOS, Windows via Git Bash). It detects your OS and uses the appropriate package manager to install your desired software.

## 📦 Supported Platforms

- 🐧 Linux (Arch-based, Debian-based)
- 🍎 macOS (via Homebrew)
- 🪟 Windows (via Winget + Git Bash)

---

## 🚀 Usage

1. **Download the script**:

```bash
curl -O https://raw.githubusercontent.com/your-username/your-repo/main/install.sh
```
2. **Make it executable**:

```
chmod +x install.sh
```
3. **Run the script**:

```
./script.sh
```
## Example 

```
$ ./install.sh
Enter the package name: git
Finding the OS...
Running on Linux via terminal
Running in Arch Distro
Installing git...
```
