# Workflow — Offline Credential Cracking (Lab)

## Goal
Validate offline hash cracking workflow using john and hashcat.

## Safety
Lab-only hashes generated locally. No real credentials.

## Procedure

1. Generate hash from known password.
2. Store hash in lab folder.
3. Run john with rockyou wordlist.
4. Verify with john --show.
5. Run hashcat with same wordlist.
6. Compare results and speed.

## Evidence
- john_run.txt
- john_show.txt
- hashcat_run.txt
- hashcat_show.txt

## Notes
Demonstrates offline cracking workflow and toolchain validation.
