FROM python

RUN pip install cvdupdate && \
  mkdir -p /opt/cvd-data && \
  cvd config set --dbdir /opt/cvd-data
WORKDIR /opt/
COPY *.sh /opt/

EXPOSE 8000
CMD bash entrypoint.sh

