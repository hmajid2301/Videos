# An Introduction to Nix

## Installation

Go to the installer [here](https://install.determinate.systems/)

Run the bash script (should be the first one), looks something like:

```bash
curl --proto '=https' --tlsv1.2 -sSf -L \
  https://install.determinate.systems/nix | sh -s -- install
```

It will walk you through all the steps and tell you what is going to setup. It even comes with an easy way to uninstall
Nix.
## Code Snippets


To create a new nix shell, create a new file called `shell.nix`.
We could use Neovim if you don't have Neovim we can do:

```bash
nix-shell -p neovim
neovim shell.nix
```

Then copy the following

```nix
{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = with pkgs; [
    lolcat
    go-task
    go
    golangci-lint
    docker-compose
  ];
}
```

Finally run:

```bash
nix-shell
```
You can now use those packages you defined in your `shell.nix` file.
