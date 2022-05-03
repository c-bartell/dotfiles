# dotfiles
---
## What's a dotfile repo and why would I ever need one?

A `dotfile`, named so because the file name commonly starts with "`.`", is a file that contains user defined preferences and configurations for various programs in their development environment. Common `dotfiles` are `.zshrc` and `.bashrc`, `.vimrc`, `.gitconfig`, `.gitignore`, and files in the `.config` directory.

Setting up `dotfiles` that maximize efficiency and productivity is a time consuming and iterative process. A `dotfiles` repo allows these settings to be safely backed up and quickly recovered in the event of catastrophic local hardware failure or just moving to new hardware.

Having a public `dotfiles` repo is also an easy way for devs to share and explore alternate environment setups with others.

## Setup:

### Setting up a Repo:

1. Initialize a bare git repository:
```shell
$ git init --bare $HOME/.dotfiles
```

2. In your `.zhrc` or `.bashrc`, create an alias for updating your dotfiles repository. I use `dot` because I'm lazy and not that creative:

```shell
# ~/.zshrc
alias dot="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME" 
```

You now have a `git` like command exclusively for your dotfiles. 

3. Configure your repo to not show untracked files:

```shell
$ dot config --local status.showUntrackedFiles no
```

4. Create a README.md file, then add it to your repo and commit. **IMPORTANT NOTE:** Never add new or changed files to your repo with `dot add .`, as this will attempt to stage EVERY file and directory in your `$HOME` directory.

```shell
$ touch README.md
$ dot add README.md
$ dot status
On branch main

No commits yet

Changes to be committed:
	(use "git rm --cached <file>..." to unstage)
		new file:	README.md

Untracked files not listed (use -u option to show untracked files)
$ dot commit -m "Initial commit" 
```


5. Set up a remote on GitHub and link it to your local repo:
```shell
$ dot remote add origin git@github.com:some-dev/dotfiles.git
$ dot remote -v
origin git@github.com:some-dev/dotfiles.git (fetch)
origin git@github.com:some-dev/dotfiles.git (push)
$ dot push -u origin main
```

Congratulations! You now have a `dotfiles` repo! 

### What should I put in my dotfiles?

As previously stated, avoid using `dot add .` when adding new files and changes. Likewise, **ALWAYS** check your files to ensure they do not contain any secrets or tokens **BEFORE** you commit them. 

#### Brewfile (MacOS users)

If you use [`Homebrew`](https://brew.sh/), you can quickly and easily create a `Brewfile`, which is like a `lock` file for software managed by `homebrew`. Having a `Brewfile` in your dotfiles repo will allow you to quickly reinstall dependency software when needed. 

To create a `Brewfile`, simply run `brew bundle dump` in your `$HOME` directory, then add it to your `dotfiles` repo.

#### rc files

If they don't contain any secrets, `.zshrc` and `.bashrc` files can be added to your repo. If they do contain tokens or secrets, you can extract them into other, untracked files and import them into your rc files using `source` syntax.

## Further Resources:

Below are some resources that I used to create this repo:
* [The best way to store your dotfiles: A bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles)
* [Ask HN: What do you use to manage dotfiles?](https://news.ycombinator.com/item?id=11070797)
* [This README](https://github.com/Siilwyn/my-dotfiles/tree/master/.my-dotfiles)

Brewfile resources:
* [brew bundle docs](https://github.com/Homebrew/homebrew-bundle#usage)
* [Brewfile: a Gemfile, but for Homebrew](https://thoughtbot.com/blog/brewfile-a-gemfile-but-for-homebrew)
