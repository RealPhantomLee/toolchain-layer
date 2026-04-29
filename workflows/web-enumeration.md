# Workflow — Web Enumeration

## Goal
Identify directories, endpoints, and common weaknesses on a web target.

## Tools
- nikto — server misconfig & vuln scan
- gobuster — directory brute force
- ffuf — fast content discovery

## Target (Lab Safe)
testphp.vulnweb.com

## Procedure
1. Run wrapper:
   ./scripts/web_enum_wrapper.sh

2. Review outputs:
   - nikto.txt → server findings
   - gobuster.txt → discovered paths
   - ffuf.md → filtered hits

3. Correlate findings across tools.

## Notes
Only run against authorized or lab targets.
