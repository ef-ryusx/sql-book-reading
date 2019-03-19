FROM postgres:9.6

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password
COPY --chown=postgres:postgres \
    ./sql/*.sql \
    /docker-entrypoint-initdb.d/