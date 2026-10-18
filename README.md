made with (https://github.com/satnaing/astro-paper)

## Development

### 1. Run Local Dev Server
```bash
pnpm run dev
```
Runs the site at `http://localhost:4321`.

---

### 2. Run CMS (Sveltia CMS)

#### Option A: Online via GitHub OAuth
1. Run `pnpm run dev`.
2. Open `http://localhost:4321/admin/` in your browser.
3. Sign in with GitHub.

#### Option B: Local Mode (Direct File Editing)
To edit local files directly without committing to GitHub:
1. In one terminal, start the local decap proxy server:
   ```bash
   npx decap-server
   ```
2. In a second terminal, start the dev server:
   ```bash
   pnpm run dev
   ```
3. Open `http://localhost:4321/admin/` to edit content locally.
