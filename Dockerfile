# TODO(pascal): Switch back to python:3 when scrapy is compatible with Python 3.7
# https://github.com/twisted/twisted/pull/966 needs to be released.
FROM python:3.6

# TODO: Investigate why this and the following requirements are needed (copied
# over from tailordev/pandas).
ENV PYTHONUNBUFFERED 1

# Install non-Pip requirements.
RUN apt-get update -qq && \
   apt-get install -qqy --no-install-recommends libatlas-base-dev gfortran

# Install Pandas and a bunch of PIP modules that are commonly used.
RUN mkdir -p /opt/pandas/build/
COPY requirements.txt /opt/pandas/build/requirements.txt
RUN pip install -r /opt/pandas/build/requirements.txt
