hxZshComplete
=============

zsh completion for haxe and it's tools

How to install
--------------

### Plain zsh

* Clone the repository:

```bash
$ git clone git://github.com/hxKraut/hxZshComplete.git ~/.hxZshComplete
```

* Run `make` and `make install`:

```bash
$ make
$ sudo make install
```

* Source the script from your `~/.zshrc`:

```bash
source ~/.hxZshComplete/haxe.zsh
export FPATH=($FPATH ~/.hxZshComplete
```

* Re-Source your `~/.zshrc` in every open terminal (or just restart them):

```bash
$ source ~/.zshrc
```

### With oh-my-zsh

(What is oh-my-zsh and where to get it?)

* Clone the repository into your omz-plugins-directory:

```bash
$ cd ZSH_CUSTOM/plugins
$ git clone git://github.com/hxKraut/hxZshComplete.git haxe
```

* Run `make` and `make install`:

```bash
$ make
$ sudo make install
```

* Activate the plugin in `~/.zshrc`:

```bash
plugins=(haxe [your other plugins without square brackets])
```

* Re-Source your `~/.zshrc` in every open terminal (or just restart them):

```bash
$ source ~/.zshrc
```

How to update
-------------

### Plain zsh

* Switch into the installation directory:

```bash
$ cd ~/.hxZshComplete
```

* Pull from master branch of the repo:

```bash
$ git pull origin master
```

* Run `make` and `make install`:

```bash
$ make
$ sudo make install
```

* Re-Source your `~/.zshrc` in every open terminal (or just restart them):

```bash
$ source ~/.zshrc
```

### With oh-my-zsh

* Switch into the installation directory:

```bash
$ cd ZSH_CUSTOM/plugins/haxe
```

* Pull from master branch of the repo:

```bash
$ git pull origin master
```

* Run `make` and `make install`:

```bash
$ make
$ sudo make install
```

* Re-Source your `~/.zshrc` in every open terminal (or just restart them):

```bash
$ source ~/.zshrc
```

How to contribute?
------------------

(TBD…)
