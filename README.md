# Fetch
A customizable fetch utility

<p align="center">
  <img src="preview.png">
</p>

## Install
```
git clone https://github.com/Manas140/fetch.git && cd fetch
./install.sh i
```

## Usage
```
fetch [ -c config | -d default | -h ]
```

## Config options

### Change default config

- Provide a new config

  ```
  cp filepath $HOME/.config/fetch/conf
  ```

  > E.g: you can use the configs available to you in the `conf/` folder.

  ```
  cp conf/cat $HOME/.config/fetch/conf
  ```

- Run fetch

  ```
    fetch
  ```

### Use a config for an instance
```
fetch -c filepath
```

### Use default config 
```
fetch -d
```

## Config Customization [ doc like ] TL;DR

- configuration is just a shell script which has predefined variables, and function.
  Therefore, from that as base we know than we can call those variables or functions in order to print them.

- configuration is stored in a function, which has a printf function

```sh
#!/bin/sh

conf() {
  printf "
    hello
  \n"
}  
```

- functions available 

```
$(Name)
$(Os)
$(Kernel)
$(Memory)
$(Shell)
$(Uptime)
$(Desktop)
```

- color, and style function 

```
# returns normal color red, where first argument refers to normal font style, and second to the color
$(c 0 31)  
```

  - font style [ 1st argument ]

  ```
  0 - normal
  1 - bold
  2 - light
  3 - italic 
  4 - underline
  7 - background
  9 - strikethrough
  ``` 
  
  - colors [ 2nd argument] 

  ```
  31 - red 
  32 - green
  33 - yellow
  34 - blue 
  35 - magenta 
  36 - cyan 
  37 - white 
  ```
  
  > use 9 instead of 3 for secondary colors, e.g 91

### At last just refer to some configs in conf/ folder and you'd get the idea
