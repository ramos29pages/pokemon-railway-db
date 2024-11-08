FROM postgres:14

ENV POSTGRES_DB=pokemon_db
ENV POSTGRES_USER=pokemon_user
ENV POSTGRES_PASSWORD=pokemon_pass

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432