# AGENTS.md

This file captures local instructions for Codex agents working in this repository.

## Goals
- Keep the single-page print layout intact for PDF output.
- Prefer minimal, readable HTML/CSS with no build steps.
- Avoid introducing heavy dependencies unless requested.

## Conventions
- If changing print styles, test for one-page output on Letter size.
- Keep text legible (>= 11pt on print) and avoid page breaks in key sections.
- Do not remove the embedded image data unless explicitly asked.

## Files
- Primary: index.html
- Print rules: in <style> under @media print

## Notes
- This project is static; deploy to Vercel as-is.
