# github-track-followers-setup

:hammer: Installation script for [github-track-followers](https://github.com/piecioshka/github-track-followers)

## Install

```bash
npm install -g github-track-followers
```

## Scripts

```bash
./clean.sh # remove logs
./install.sh # create bin/dump.sh (in this file you can define an user)
```

## Crontab

```
0 8 * * * ~/projects/github-track-followers-setup/bin/dump.sh >> ~/logs/github-track-followers.access.log 2> ~/logs/github-track-followers.error.log
```

## Logs

```bash
mkdir ~/logs/
touch ~/logs/github-track-followers.access.log
touch ~/logs/github-track-followers.error.log
```
