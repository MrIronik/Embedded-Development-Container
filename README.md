# Embedded-Development-Container

This version is for ARM MCUs.

<br>

### Adding to project

Add this repo as submodule and checkout it to arm branch to your root folder.

```zsh
git submodule add https://github.com/MrIronik/Embedded-Development-Container.git
git submodule update
cd Embedded-Development-Container
git switch arm
```

Then make follow .devcontainer/devcontainer.json in root of your project

```zsh
mkdir .devcontainer
touch .devcontainer/devcontainer.json
```

then copy devcontainer.json template from submodule and paste it to your own.
You also should change paths if you didn't follow my project structure.
Also you can change name if you want to.

```json
"dockerfile": "../Embedded-Development-Container/Dockerfile"
```

