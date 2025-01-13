# github-track-followers-setup

🔨 Installation script for [github-track-followers](https://github.com/piecioshka/github-track-followers)

## Step 1. Install

```bash
npm install -g github-track-followers
cd ~/projects/
git clone git@github.com:piecioshka/github-track-followers-setup.git
cd github-track-followers-setup
# ./clean.sh # remove logs
./install.sh # create bin/dump.sh (in this file you can define an user)
```

## Step 2. Create logs files

- Create a log file for Cron errors

  ```bash
  mkdir ~/logs/
  touch ~/logs/github-track-followers.access.log
  touch ~/logs/github-track-followers.error.log
  ```

## Step 3. Setup Cron

- Add to Cron

  ```bash
  crontab -e  # edit list of tasks
  ```

- Add definition

  ```text
  0 20 * * * ~/projects/github-track-followers-setup/bin/dump.sh >> ~/logs/github-track-followers.access.log 2> ~/logs/github-track-followers.error.log
  ```

- Verify definition

  ```bash
  crontab -l  # display list of all tasks
  ```
