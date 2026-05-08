# Toolchain Layer — Security Tool Inventory & Validation

A repeatable framework for verifying that an offensive-security workstation has the right tools installed, **and that they actually work**, with reusable wrappers and labbed proof artifacts.

This is **Brick #4** of a portable Kali Live USB security platform — see [Related projects](#related-projects).

---

## Why this exists

A security workstation is only as useful as the tools you can actually run on it. This repo turns "does my Kali install have what I need?" into a one-command answer, and turns "have I ever actually validated this tool against a real target?" into a paper trail.

It does three things:

1. **Inventories** the tools expected on the workstation (recon, web, network, creds, exploitation).
2. **Wraps** the most-used workflows (web enumeration, offline cracking) so they run the same way every time and write timestamped output.
3. **Validates** each tool by linking lab artifacts (real scan/cracking output) back to the [tool matrix](tool-matrix.md).

---

## Quick start

```bash
# 1) Verify the tools are installed
./scripts/toolcheck.sh

# 2) Run the web-enumeration wrapper against a legal target
./scripts/web_enum_wrapper.sh testphp.vulnweb.com

# 3) Review the labbed output
ls labs/
```

Output lands in `labs/web_<target>_<timestamp>/` (nikto, gobuster, ffuf).

---

## What's in this repo

| Path | Purpose |
|------|---------|
| [`tool-matrix.md`](tool-matrix.md) | Ground-truth inventory: which tools are present, validated, wrapped, and documented |
| [`scripts/toolcheck.sh`](scripts/toolcheck.sh) | One-shot presence check across the expected toolset |
| [`scripts/web_enum_wrapper.sh`](scripts/web_enum_wrapper.sh) | Wrapper that runs nikto + gobuster + ffuf with consistent output paths |
| [`workflows/web-enumeration.md`](workflows/web-enumeration.md) | Documented workflow for web app reconnaissance |
| [`workflows/credentials-offline.md`](workflows/credentials-offline.md) | Documented workflow for offline hash cracking (john / hashcat) |
| `labs/` | Real validation output (timestamped, real targets where legal) |
| `lessons-learned.md` | Field notes and gotchas from running these tools in practice |

---

## Tool coverage at a glance

Categories covered (full detail in [`tool-matrix.md`](tool-matrix.md)):

- **Recon & Enumeration** — nmap
- **Web Testing** — burpsuite, nikto, gobuster, ffuf
- **Network & Traffic** — wireshark, tcpdump, bettercap
- **Credentials & Passwords** — hydra, john, hashcat
- **Exploitation** — metasploit

Each row in the matrix is one of: ✅ present, 🧪 validated against a real target, 🧰 wrapped for repeat use, 📄 has a workflow doc.

---

## Validation philosophy

A tool listed without a `labs/` artifact is **unproven**. Every tool that earns the 🧪 marker has at least one real run captured in `labs/` — typically against a public testbed (`testphp.vulnweb.com`) or a deliberately vulnerable VM. Output is preserved verbatim so the workflow is reproducible.

---

## Legal & ethical use

These tools are for authorized testing only — your own systems, deliberately vulnerable practice targets (HackTheBox, VulnHub, OWASP Juice Shop), or systems you have written permission to test. Don't point them at infrastructure you don't own without authorization.

---

## Related projects

This repo is part of a portable security platform built on a Raspberry Pi cyberdeck running Kali Live USB:

- [live-usb-encrypted-persistence](https://github.com/RealPhantomLee/live-usb-encrypted-persistence) — Brick #1: encrypted persistent USB
- [cyberdeck-platform](https://github.com/RealPhantomLee/cyberdeck-platform) — Brick #2: hardware platform
- [interface-hud-operator-controls](https://github.com/RealPhantomLee/interface-hud-operator-controls) — Brick #3: operator HUD
- **toolchain-layer** (this repo) — Brick #4: security tool inventory
- [logging-siem-wazuh](https://github.com/RealPhantomLee/logging-siem-wazuh) — Brick #5: SIEM
- [vulnerability-management-lab](https://github.com/RealPhantomLee/vulnerability-management-lab) — Brick #6: end-to-end VM lifecycle lab

---

## Author

**Charles Tucker** — [github.com/RealPhantomLee](https://github.com/RealPhantomLee)
