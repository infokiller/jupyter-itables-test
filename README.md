## Overview

To reproduce <https://github.com/mwouts/itables/issues/145> in docker:

```sh
git clone https://github.com/infokiller/jupyter-itables-test jupyter-itables-test
cd jupyter-itables-test
docker build .
docker run rm --interactive --net=host -p 9999:9999 "$(docker build . -q)" jupyter notebook --no-browser --allow-root --port=9999
```

Then open a browser at the URL printed with the token.
