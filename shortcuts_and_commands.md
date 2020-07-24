## Tools Cheat Sheets

[https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx)

[https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux)

[https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)

### Share term output

```echo 'alias tb="nc termbin.com 9999"' >> .bash_profile```
```echo 'test' | tb```

### Commands history

* First, history can be browsed easily with zsh shell
* Then type `Ctrl+R` and we can fuzzy search history with `fzf` tool
