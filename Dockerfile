###############################################################
# Dockerfile to build container images for leafviz
# Based on r-base 4.2.0
###############################################################

FROM r-base:4.2.0

# File Author / Maintainer
LABEL maintainer="Naoto Kubota <naotok@ucr.edu>"

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && \
    apt-get install -y w3m lynx links elinks

# install leafviz
RUN R -e 'install.packages("remotes")' && \
    R -e 'remotes::install_github("jackhump/leafviz")'

# Launch R
CMD ["R"]
