# JetBrains Web
### Imagine running your favorite JetBrains IDE on Web!


## Usage (example with WebStorm)
###### (You must have the IDE on the `dist` directory with the same name for building)
###### `./gen.sh <IDE Name> <IDE Version> <VNC Password> <VNC Resolution>`
- `./gen.sh WebStorm 2022.2 123456 1920x1080`
- `cd ./dist`
- `docker-compose up -d`
- Open your browser
- Access (most likely) `http://172.18.0.2/vnc_lite.html` and insert the password you have set.
- Have fun!
