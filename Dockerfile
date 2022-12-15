
FROM ghcr.io/dellelce/mkit-base as mkit

FROM ghcr.io/dellelce/python-base as python

COPY --from=mkit /mkit /mkit

RUN apk update --no-cache && apk add --no-cache libgcc bash gawk wget file make && \
    ln -s /app/python/bin/python3 /bin/python && \
    ln -s /app/python/bin/pip3 /bin/pip

ENV PATH=/mkit:/app/python/bin:$PATH
