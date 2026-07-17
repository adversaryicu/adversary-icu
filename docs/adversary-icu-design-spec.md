# Adversary ICU — Hugo Theme Design Specification

## 1. Project Intent

This specification defines a Hugo theme for **Adversary ICU**, a static publication-style website focused on malware reports, threat actor observations, analyst notes, screenshots, IOCs, and follow-up reporting.

The design direction should combine:

- a **publication interface** rather than a personal blog
- a **terminal-inspired framing language** rather than a literal terminal UI
- a **dark, restrained, analyst-focused visual system**
- a **text-first reading experience** built for long-form technical writing
- a **brand-first identity** where the publication is the focal point, not the author

The visual reference point is a layout style similar to joanwestenberg.com, but adapted for a cybersecurity reporting publication. The result should feel like:

- field notes from an analyst
- an operational publication shell
- a research archive with terminal cues
- an intelligence notebook for malware and adversary tradecraft

This should **not** feel like:

- a glossy startup site
- a SaaS dashboard
- a hacker movie prop
- a neon cyberpunk UI
- a generic personal developer blog

---

## 2. Design Principles

### 2.1 Primary Goals

1. **Reading comes first**
   - long reports must be comfortable to read
   - paragraphs, code blocks, screenshots, and IOC sections must all be easy to scan

2. **Terminal language as framing, not gimmick**
   - terminal motifs should be used for headings, section intros, metadata, and structural cues
   - the website should not become a fake shell emulator

3. **Brand-first, author-second**
   - Adversary ICU is the visible identity
   - the site should read like a publication imprint

4. **Archive visibility**
   - old content should remain discoverable
   - the homepage should expose latest and archival content clearly

5. **Low-friction publishing**
   - theme structure should be simple to maintain in Hugo
   - reports and notes should use predictable templates

### 2.2 Design Tone

The tone should be:

- operational
- editorial
- forensic
- restrained
- high-signal
- slightly austere
- technical without visual clutter

The tone should avoid:

- rounded, bubbly startup softness
- bright saturation
- too many decorative icons
- exaggerated glitch effects
- dense visual chrome

---

## 3. Brand Positioning

### 3.1 Brand Name Presentation

Primary brand lockup:

**ADVERSARY ICU**

Secondary descriptor:

**Field Notes on Malware, Campaigns, and Adversary Tradecraft**

The brand should appear as a publication masthead, not a logo-first product identity.

### 3.2 Brand Personality

Adversary ICU should feel like:

- a malware intake desk
- a public analyst notebook
- a field reporting archive
- a place where suspicious artifacts are examined and documented

It should imply:

- samples admitted
- reports filed
- findings logged
- activity revisited over time

---

## 4. Color System

The palette should stay narrow. Most of the interface should rely on neutral values, with one controlled accent.

### 4.1 Core Palette

#### Backgrounds
- **Base background:** `#0B0D10`
- **Surface background:** `#11151A`
- **Raised surface / code panel / metadata block:** `#161B22`
- **Border / divider dark:** `#21262D`

#### Foreground Text
- **Primary text:** `#E6EDF3`
- **Secondary text:** `#B6C2CF`
- **Muted text:** `#8B98A5`
- **Faint terminal label text:** `#6E7681`

#### Accent Colors
Primary accent should be restrained and used sparingly.

- **Primary accent red:** `#A63A3A`
- **Primary accent red hover / brighter state:** `#C44B4B`
- **Warning stamp / status red:** `#8F2D2D`

Optional secondary technical accent:
- **Muted hospital green:** `#5C7F67`
- **Muted phosphor green:** `#7A8F6A`

Optional tertiary metadata accent:
- **Cold steel blue:** `#5E738A`

### 4.2 Usage Rules

- The interface should be at least **85–90% neutral** by area.
- Red should be reserved for:
  - active links on hover
  - stamps or status markers
  - section highlights
  - category emphasis when needed
- Green should only be used for subtle terminal semantics, not as a dominant brand color.
- Avoid cyan, neon green, electric magenta, and bright blue.

### 4.3 Contrast Targets

- Body text contrast ratio should meet at least **WCAG AA**, preferably approaching AAA for primary body copy.
- Muted metadata must still remain readable against the dark background.

---

## 5. Typography System

The type system should use **two families maximum**.

### 5.1 Primary Body Typeface

Use a highly readable sans-serif or modern serif-neutral hybrid for body copy.

Preferred category:
- humanist sans
- editorial sans
- highly legible grotesk

Examples of style direction:
- Inter-like
- IBM Plex Sans-like
- Geist-like
- Source Sans-like

Body copy requirements:
- excellent legibility at 18–20px
- strong punctuation rendering
- clean numerals
- good italic support
- strong rendering of code-adjacent prose

### 5.2 Monospace Typeface

Use a restrained technical monospace for:
- metadata lines
- terminal-like section headers
- code blocks
- IOC tables
- small utility labels

Preferred category:
- clean modern monospace
- not novelty terminal bitmap

Examples of style direction:
- IBM Plex Mono-like
- JetBrains Mono-like
- Berkeley Mono-like
- SF Mono-like

### 5.3 Type Scale

#### Desktop scale
- Masthead: `clamp(2.75rem, 5vw, 4.5rem)`
- Hero subtitle: `1.125rem` to `1.375rem`
- Section number label: `0.8rem` to `0.9rem`
- Terminal command line: `1rem` to `1.1rem`
- Article title: `2.1rem` to `3rem`
- H2: `1.5rem` to `1.875rem`
- H3: `1.2rem` to `1.375rem`
- Body: `1.0625rem` to `1.125rem`
- Metadata: `0.875rem`
- Fine print: `0.8rem`

#### Line heights
- Masthead: `1.0` to `1.1`
- Headings: `1.15` to `1.25`
- Body: `1.65` to `1.8`
- Monospace labels: `1.4` to `1.5`

### 5.4 Font Weight Usage

- Masthead: `700` to `800`
- Section headers: `600` to `700`
- Body copy: `400` to `450`
- Metadata: `500`
- Monospace command headers: `500` to `600`

### 5.5 Typography Behavior

- Avoid center alignment except in very narrow cases.
- Most text should be left-aligned.
- Headings should have generous spacing above them.
- Monospace should be used as a structural accent, not for full body copy.

---

## 6. Layout System

### 6.1 Global Width

The site should use a centered reading column with controlled max widths.

#### Recommended widths
- Overall page wrapper: `min(92vw, 1200px)`
- Primary content column on homepage: `820px` to `960px`
- Long-form article content width: `720px` to `780px`
- Code/image full-width breakout inside article: `900px` to `1100px` max when supported

### 6.2 Spacing System

Use a consistent spacing scale.

Suggested spacing units:
- `4px`
- `8px`
- `12px`
- `16px`
- `24px`
- `32px`
- `48px`
- `64px`
- `96px`

Usage:
- tight metadata spacing: `8–12px`
- card/list item internal spacing: `16–24px`
- section gaps: `48–64px`
- hero to first section: `64–96px`

### 6.3 Borders and Dividers

Use thin dividers heavily to create structure.

- Border color: `#21262D`
- Border thickness: `1px`
- Divider style: solid
- Dashed or dotted dividers may be used sparingly for terminal flavor

### 6.4 Corners and Surfaces

- Border radius should be minimal.
- Default radius: `0px` to `4px`
- Code blocks / metadata panels: `4px`
- Avoid pill-heavy or highly rounded UI.

---

## 7. Information Architecture

### 7.1 Primary Navigation

Top nav should be minimal:

- Home
- Reports
- Notes
- Tags
- About
- RSS

Optional external link:
- GitHub

### 7.2 Primary Content Types

#### Reports
Long-form malware or campaign writeups.

#### Notes
Short-form analyst observations.

#### Tags
Taxonomy browsing.

#### About
Brief publication description.

### 7.3 Content Hierarchy Order

1. Brand / identity
2. Latest report
3. Recent notes
4. Archive / recent reports
5. Tags
6. Footer

---

## 8. Homepage Specification

The homepage is the most important page in the system. It should feel like the command shell of a publication.

### 8.1 Header / Top Bar

#### Layout
Single horizontal row on desktop.

Left:
- publication wordmark or text masthead

Right:
- nav links
- optional RSS link

#### Styling
- height: `56px` to `72px`
- bottom border: `1px solid #21262D`
- background: transparent or `#0B0D10`
- sticky behavior: optional, but should remain subtle if used

#### Nav styling
- font: monospace or body sans with monospace-like spacing
- size: `0.9rem`
- color: `#B6C2CF`
- hover: `#E6EDF3`
- active: underline, border-bottom, or accent color cue

### 8.2 Hero / Identity Block

This should be a text-first masthead block.

#### Content
- brand name
- one-line publication descriptor
- operational metadata row

#### Example metadata fields
- `TYPE // publication`
- `STATUS // active`
- `UPDATED // YYYY-MM-DD`
- optional `FOCUS // malware reports, analyst notes, follow-ups`

#### Styling
- top padding: `64–96px`
- bottom padding: `48–64px`
- masthead size: large, dominant
- subtitle width: max `600–700px`
- metadata line in monospace
- metadata color: `#8B98A5`

### 8.3 Numbered Section System

Each homepage content section should begin with a numbered editorial marker.

#### Pattern
- line 1: section number and label
- line 2: terminal-style command

#### Examples
- `01 LATEST REPORT`
- `## $ cat ./reports/latest`

- `02 RECENT NOTES`
- `## $ ls ./notes/`

- `03 ARCHIVE`
- `## $ cat ./reports/* --sort=date --order=desc`

- `04 TAGS`
- `## $ ls ./tags/`

#### Styling
- section label font: monospace
- size: `0.85rem`
- letter spacing: `0.08em` to `0.14em`
- color: `#8B98A5`
- command line size: `1rem` to `1.125rem`
- command line color: `#E6EDF3`
- command line margin-bottom: `20–24px`

### 8.4 Latest Report Block

This should be the primary featured content block.

#### Content
- report type marker
- date
- title
- 1–2 sentence summary
- tags
- read time
- CTA link

#### Layout
Single large list item, not a visual card-heavy tile.

#### Styling
- padding top and bottom: `20–28px`
- bottom border: `1px solid #21262D`
- title size: `1.6rem` to `2.1rem`
- summary color: `#B6C2CF`
- metadata line in monospace or small sans

#### Link treatment
CTA should feel textual, like:
- `READ -->`
- `OPEN -->`
- `VIEW REPORT -->`

### 8.5 Recent Notes List

#### Layout
A vertical list of 3 to 6 entries.

#### Entry contents
- note index number optional
- title
- summary or one-line excerpt
- date
- tags

#### Style
- each row separated by thin border
- hover states should be subtle background lift or text brightening
- no oversized cards

### 8.6 Archive / Recent Reports Section

#### Content
More report entries in list form.

#### Terminal cue
Use a shell-like heading and then a text archive beneath.

#### Entry style
- title
- summary or excerpt line
- date
- read time
- tags

### 8.7 Tags Section

Tags should not look like colorful blog badges.

#### Styling
- monochrome tags
- outlined or subtle filled background
- border: `1px solid #21262D`
- text color: `#B6C2CF`
- hover border/text shift to primary text or accent

#### Size
- padding: `6px 10px`
- font-size: `0.85rem`
- border radius: `2px` to `4px`

### 8.8 Footer

Minimal footer.

Content options:
- copyright
- RSS
- GitHub
- short line about the publication

Styling:
- top border: `1px solid #21262D`
- muted text: `#8B98A5`
- padding: `32–48px`

---

## 9. Report Page Specification

Report pages are the core product.

### 9.1 Header Block

#### Content
- title
- date
- tags
- read time
- optional one-line dek

#### Styling
- title large and high-contrast
- metadata small and structured
- generous space before article body

### 9.2 Article Width

- body width: `720–780px`
- code/image breakouts may exceed that width slightly

### 9.3 Default Report Structure

1. Summary
2. Initial Context
3. Acquisition / Delivery
4. Static Analysis
5. Dynamic Analysis
6. Key Behaviors
7. IOCs
8. Defeat / Defensive Notes
9. References / Related Posts

### 9.4 Headings

Article headings should be visually strong but not oversized.

- H2 should have top margin of `48–64px`
- H3 should have top margin of `32–40px`
- small underline or divider accent can be used under H2

### 9.5 Paragraph Styling

- body size: `18px`
- line height: `1.7`
- paragraph spacing: `1em` to `1.25em`
- max line length: ideally 70–78 characters average

### 9.6 Lists

Lists should remain clean and compact.

- avoid excessive indentation
- use standard bullets or simple dashes
- IOC-heavy lists can use monospace blocks instead

### 9.7 Code Blocks

#### Styling
- background: `#161B22`
- border: `1px solid #21262D`
- text: `#E6EDF3`
- monospace font-size: `0.92rem`
- padding: `16–20px`
- horizontal scroll enabled
- radius: `4px`

Code blocks should look like analyst tooling output, not glowing terminal windows.

### 9.8 Inline Code

- background: `rgba(255,255,255,0.04)`
- border: `1px solid rgba(255,255,255,0.06)`
- padding: `0.12em 0.35em`
- color: `#E6EDF3`
- radius: `3px`

### 9.9 Blockquotes

Use for side observations or notes.

- left border: `3px solid #A63A3A`
- text color: `#B6C2CF`
- background: optional `rgba(255,255,255,0.02)`
- padding: `12px 16px`

### 9.10 Tables

Particularly useful for IOCs.

#### Table styling
- full width
- collapsed borders
- header background: `#11151A`
- header text: `#E6EDF3`
- row borders: `1px solid #21262D`
- body text can use monospace for IOC columns

---

## 10. Notes Page Specification

Notes should be visibly related to reports, but lighter and faster.

### 10.1 Layout

Same base article layout, but with:
- slightly smaller title scale
- less rigid sectioning
- shorter body

### 10.2 Visual Treatment

A note should still look like publication content, not a tweet thread.

Optional note marker:
- `NOTE // YYYY-MM-DD`

### 10.3 Recommended Structure

- title
- summary or opening sentence
- 2–6 paragraphs
- optional screenshot
- optional short code block
- optional related report link

---

## 11. Screenshots and Images

Screenshots are important for malware writeups and should be integrated cleanly.

### 11.1 Usage Guidelines

Use screenshots for:
- Ghidra views
- process trees
- email lures
- sandbox output
- strings views
- packet captures
- deobfuscation stages

### 11.2 Image Styling

- max width: 100%
- border: `1px solid #21262D`
- background: `#11151A`
- radius: `4px`
- optional subtle shadow: `0 0 0 1px rgba(255,255,255,0.02)` or minimal blur shadow

### 11.3 Captions

- font-size: `0.85rem`
- color: `#8B98A5`
- margin-top: `8px`
- font can be body sans or monospace

### 11.4 Layout Behavior

- standard screenshots remain inside the reading column
- extra-wide screenshots may break out to a wider container
- never let screenshots dominate the visual hierarchy more than the article text

---

## 12. Tags, Taxonomy, and Metadata

### 12.1 Tag Page Layout

A tag page should show:
- tag title
- short intro line such as count of posts
- list of associated reports and notes

### 12.2 Metadata Style

Metadata should be compact and structured.

Examples:
- `REPORT // 2026-04-14 // 8 min read`
- `TAGS // lumma / infostealer / static-analysis`

### 12.3 Content Type Badges

Use plain text labels, not colorful badges.

Examples:
- `REPORT //`
- `NOTE //`
- `FOLLOW-UP //`

---

## 13. Interaction Design

### 13.1 Hover States

Hover behavior should be subtle.

Allowed hover treatments:
- text color brightens
- underline appears
- border color increases in contrast
- very slight surface lift using background shift

Avoid:
- exaggerated movement
- bouncing animations
- glow effects
- flashy transitions

### 13.2 Transition Timing

- `120ms` to `180ms`
- ease or ease-out

### 13.3 Focus States

Keyboard accessibility is required.

Recommended focus ring:
- outline: `1px solid #C44B4B`
- outline offset: `2px`

---

## 14. Responsive Behavior

### 14.1 Tablet

- reduce masthead size
- keep same stacked vertical flow
- nav can wrap or collapse minimally

### 14.2 Mobile

The mobile experience should remain text-first.

#### Mobile behaviors
- nav collapses into menu if needed
- metadata rows stack vertically
- command-line subheads remain readable
- article body drops to `16.5–17px`
- code blocks remain horizontally scrollable
- tags wrap neatly

#### Mobile spacing
- outer gutters: `16–20px`
- section gaps: `40–48px`

Avoid on mobile:
- sidebars
- multi-column archive grids
- tiny metadata text

---

## 15. Accessibility Requirements

- all interactive elements must have visible focus states
- color contrast must remain high
- semantic heading order must be correct
- nav and content landmarks should be properly defined
- code blocks and tables should remain readable on mobile
- do not encode meaning using color alone

---

## 16. Hugo Template Structure Recommendations

### 16.1 Content Sections

- `content/reports/`
- `content/notes/`
- `content/about/`
- `content/tags/` generated by taxonomy

### 16.2 Key Templates

- `layouts/_default/baseof.html`
- `layouts/index.html`
- `layouts/reports/list.html`
- `layouts/reports/single.html`
- `layouts/notes/list.html`
- `layouts/notes/single.html`
- `layouts/_default/terms.html`
- `layouts/_default/taxonomy.html`
- `layouts/partials/header.html`
- `layouts/partials/footer.html`
- `layouts/partials/metadata.html`
- `layouts/partials/section-header.html`

### 16.3 Reusable Partial Idea

A partial for the numbered terminal section heading:

Inputs:
- section number
- section label
- command string

Output example:
- `01 LATEST REPORT`
- `$ cat ./reports/latest`

---

## 17. Homepage Content Model

### 17.1 Hero
- masthead
- descriptor
- operational metadata

### 17.2 Latest Report
- single featured report

### 17.3 Recent Notes
- 3–5 latest notes

### 17.4 Archive Preview
- 5–10 recent reports and notes mixed or reports-only

### 17.5 Tag Preview
- top tags or full tag cloud in restrained style

---

## 18. Content Frequency Model

The design should support:

- **1 post per week** as the target cadence
- **2–3 reports per month**
- **1–2 notes per month**

The system should make both long and short entries feel native to the same publication.

---

## 19. Suggested Voice Cues in the UI

Interface copy should use restrained terminal/editorial language.

Good:
- `STATUS // active`
- `TYPE // publication`
- `UPDATED // 2026-04-14`
- `$ cat ./reports/latest`
- `$ ls ./notes/`
- `READ -->`

Avoid:
- fake shell prompts everywhere
- green-on-black emulator styling
- novelty hacker slang
- gimmicky command output jokes

---

## 20. Final Art Direction Summary

The finished theme should feel like:

- a dark editorial shell
- a terminal-inflected publication
- a malware reporting notebook
- a structured archive for analyst field notes

It should visually communicate:

- operational focus
- text-first discipline
- technical credibility
- low-noise presentation
- repeatable long-form publishing

The theme should be sparse, not empty.
It should be technical, not theatrical.
It should be distinctive, but not stylized to the point of gimmick.

The final impression should be:

**Adversary ICU is where samples, campaigns, and adversary behaviors are admitted, examined, and documented.**

