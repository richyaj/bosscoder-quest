# DSA Quest

Gamified catch-up tracker for Bosscoder recordings. Single-file app: `index.html`.

- Sessions unlock one at a time; points, streaks, rewards, learning log.
- Data lives in the browser; with Supabase configured it syncs across devices.

## Supabase setup
1. Create a project at supabase.com.
2. SQL Editor: run `supabase/schema.sql`.
3. Project Settings -> API: copy the Project URL and the `anon` public key into `SB_URL` / `SB_KEY` near the top of the script in `index.html`. Never use the `service_role` key.
4. Authentication -> Providers -> Email: optionally turn off "Confirm email" for instant sign-up.
5. After deploying, add the site URL under Authentication -> URL Configuration.

## Hosting
GitHub Pages: Settings -> Pages -> deploy from `main` / root.
