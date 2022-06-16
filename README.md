# Docker container for leafviz

Dockerfile for [leafviz](https://github.com/jackhump/leafviz): the Leafcutter Visualisation Shiny app.

It's on [dockerhub](https://hub.docker.com/r/naotokubota/leafviz) and [github](https://github.com/NaotoKubota/leafviz).

## tags and links
- `1.0` [(master/Dockerfile)](https://github.com/NaotoKubota/leafviz/blob/master/Dockerfile)

## how to build

```sh
docker pull naotokubota/leafviz:1.0
```

or

```sh
git clone git@github.com:NaotoKubota/leafviz.git
cd leafviz
docker build --rm -t naotokubota/leafviz:1.0 .
```

## running

```sh
cd /path/to/your/directory # move to the directory where your_leafviz.RData exists
docker run --rm -it -v `pwd`:/mydata -p 3838:3838 naotokubota/leafviz:1.0
```

```R
# R
options(shiny.host = "0.0.0.0")
options(shiny.port = 3838)
library(leafviz)
leafviz("/mydata/your_leafviz.RData")
```

You can access `http://0.0.0.0:3838` on your local browser then LeafViz will launch.