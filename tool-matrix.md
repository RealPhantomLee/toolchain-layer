# Tool Matrix — Brick #4 (Toolchain Layer)

Legend:
- ✅ Present
- 🧪 Validated (lab output exists)
- 🧰 Wrapper exists
- 📄 Workflow doc exists
- ⬇️ Optional install (not required for this brick)

---

## Recon & Enumeration

| Tool | Status | Validation Lab | Wrapper | Notes |
|------|--------|----------------|---------|------|
| nmap | ✅ 🧪 | `labs/nmap_fast_scan.txt` | (planned) | Baseline recon proof |

---

## Web Testing

| Tool | Status | Validation Lab | Wrapper | Workflow | Notes |
|------|--------|----------------|---------|----------|------|
| burpsuite | ✅ | (manual workflow only) | (n/a) | (planned) | Proxy testing workflow |
| nikto | ✅ 🧪 | `labs/web_testphp.vulnweb.com_20260213_201215/nikto.txt` | ✅ `scripts/web_enum_wrapper.sh` | ✅ `workflows/web-enumeration.md` | Web server checks |
| gobuster | ✅ 🧪 | `labs/web_testphp.vulnweb.com_20260213_201215/gobuster.txt` | ✅ `scripts/web_enum_wrapper.sh` | ✅ `workflows/web-enumeration.md` | Directory discovery |
| ffuf | ✅ 🧪 | `labs/web_testphp.vulnweb.com_20260213_201215/ffuf.md` | ✅ `scripts/web_enum_wrapper.sh` | ✅ `workflows/web-enumeration.md` | Fast fuzzing/content discovery |

---

## Network & Traffic

| Tool | Status | Validation Lab | Wrapper | Notes |
|------|--------|----------------|---------|------|
| wireshark | ✅ | (planned) | (n/a) | GUI capture/analysis |
| tcpdump | ✅ | (planned) | (planned) | CLI capture proof |
| bettercap | ✅ | (planned) | (planned) | MITM framework (lab only) |

---

## Credentials & Passwords

| Tool | Status | Validation Lab | Wrapper | Notes |
|------|--------|----------------|---------|------|
| hydra | ✅ | (planned) | (optional) | Online auth testing (lab only) |
| john | ✅ 🧪 | `labs/creds_lab/john_show_lab.txt` | (optional) | Offline cracking (validated) |
| hashcat | ✅ 🧪 | `labs/creds_lab/hashcat_show_lab.txt` | (optional) | Offline cracking (validated) |

---

## Frameworks

| Tool | Status | Validation Lab | Wrapper | Notes |
|------|--------|----------------|---------|------|
| msfconsole | ✅ | (planned) | (optional) | Framework presence + version proof |

---

## Status Artifacts

- Tool presence log: `logs/tool_presence.txt`
- Toolcheck run: `logs/toolcheck_run.txt`
- Web enum run folder: `labs/web_testphp.vulnweb.com_20260213_201215/`
