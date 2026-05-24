#!/usr/bin/env bash
# Spin up a disposable zsh + oh-my-zsh container to test
docker run --rm -it \
  --name zsh-playground \
  ubuntu:latest \
  bash -c "
    apt-get update -qq && apt-get install -y -qq zsh git curl 2>/dev/null | tail -1 &&
    echo '--- ZSH INSTALLED ---' &&
    zsh --version &&
    echo '--- INSTALLING OH-MY-ZSH ---' &&
    sh -c \"\$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)\" --unattended 2>/dev/null &&
    echo '--- STARTING ZSH ---' &&
    cd /root && zsh
  "
