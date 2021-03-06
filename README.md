# virtual-letter

Sending a letter has become obsolete. One can send e-mails or messages over a
thousand ways on social media. But how about making a computer program for your
dearly beloved?

![app gif](screenshots/screenshot-app.gif)

## How it Works

This project creates a slideshow:

* Intro slide with a start button.
* 1 photo + 1 caption per slide.
* Outro slide with a restart button.

## How to Use

* Add your photos inside `photos`. In the app, they are sorted **by date**.
* Run `./create.sh` once. It will delete all previous customization from `userconfig.js`.
* Customize variables on `userconfig.js`.
* Build and run the Qt app.

### Deploy With Docker

You can deploy to a board running [Torizon](https://www.toradex.com/operating-systems/torizon):

![board gif](screenshots/screenshot-board.gif)

* Switch to the `torizon` branch.
* Edit parameters on `docker-build-deploy.sh`.
* Run `docker-build-deploy.sh`.
    * If you are using VS Code, run the build task (`Ctrl + Shift + b`).

## License

Source code is licensed under GPLv3, see [LICENSE](LICENSE).

Sample pictures on `photos` are licensed under [CC-BY-2.0](https://creativecommons.org/licenses/by/2.0/):

* flower1.jpg - author: [mcdlttx](https://www.flickr.com/people/mcdlttx/) / source URL: [thumbnail](https://c7.staticflickr.com/6/5169/5252468855_1acbf960ba_z.jpg)
* flower2.jpg - author: [Col Ford and Natasha de Vere](https://www.flickr.com/people/col_and_tasha/) / source URL: [thumbnail](https://c3.staticflickr.com/6/5024/5649019860_6d6ffd3691_z.jpg)
* flower3.jpg - author: [zengame](https://www.flickr.com/people/zengame/) / source URL: [thumbnail](https://c6.staticflickr.com/8/7366/16278903648_e6f2c2eed1_z.jpg)