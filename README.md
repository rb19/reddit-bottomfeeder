# reddit-bottomfeeder
This is a simple bash script that complements aliparlakci's [bulk-downloader-for reddit](https://github.com/aliparlakci/bulk-downloader-for-reddit). Follow aliparlacki's README to setup your python environment before proceeding.
aliparlakci's tool downloads items into subdirectories by subreddit, but this extracts all of those items and allows you to transfer them to another directory.

## How to Use
Run `git submodule --init` to download the reddit bulk downloader tool.

In consolidate.sh, add your target and download paths.
Run `chmod +x consolidate.sh`, then run the script. Follow the downloader script prompts.
