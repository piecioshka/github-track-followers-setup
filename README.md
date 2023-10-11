# github-track-followers-setup

:hammer: Installation script for [github-track-followers](https://github.com/piecioshka/github-track-followers)

## Commands

```bash
npm install -g github-track-followers
./install.sh
```

to remove logs and `dump.sh`

```bash
./clean.sh
```

## Crontab

```
0 8 * * * ~/projects/github-track-followers-setup/bin/dump.sh >> ~/logs/github-track-followers.access.log 2> ~/logs/github-track-followers.error.log
```

## Logs

```
~/logs/github-track-followers.access.log
~/logs/github-track-followers.error.log
```
