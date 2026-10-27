-- Run once in Supabase: SQL Editor -> New query -> paste -> Run
create table if not exists public.app_state (
  user_id uuid primary key default auth.uid() references auth.users(id) on delete cascade,
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.app_state enable row level security;

create policy "own row only" on public.app_state
  for all to authenticated
  using (auth.uid() = user_id)
  with check (auth.uid() = user_id);
