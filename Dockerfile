
FROM ghcr.io/dellelce/mkit-base as mkit

FROM ghcr.io/dellelce/python-base as python

COPY --from=mkit /mkit /mkit

RUN apk update --no-cache && apk add --no-cache libgcc bash gawk wget file make

ENV PATH=/mkit:/app/python/bin:$PATH
