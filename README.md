This is the source of the Docker image
[bayesimpact/pandas-base](https://hub.docker.com/r/bayesimpact/pandas-base/).

[![](https://images.microbadger.com/badges/image/bayesimpact/pandas-base.svg)](https://hub.docker.com/r/bayesimpact/pandas-base/)

It is used to speed up setup when developping a project using Pandas.
It prepares a container with Python 3 and Pandas latest versions as well as a
good deal of PIP modules pre-installed.

If you use this image for production beware that there might be many pip
modules that you won't need at all.

To use it base your `Dockerfile` on it with:

```
FROM bayesimpact/pandas-base
```
