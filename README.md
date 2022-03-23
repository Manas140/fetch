# Fetch
Another fetch utility

<p align="center">
  <img src="preview.png">
</p>

# Install
```
git clone https://github.com/Manas140/fetch.git && cd fetch
./install.sh i
```

# Usage
```
fetch [ -c config | -h ]
```

# Configure

## Change default config

- Provide a new config

  ```
  cp filepath $HOME/.config/fetch/conf
  ```

  For example you can use the configs available to you in the `conf/` folder.

  ```
  cp conf/anime $HOME/.config/fetch/conf
  ```

- Run fetch

  ```
    fetch
  ```

## Use a config for an instance

```
fetch -c filepath
```
