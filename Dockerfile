FROM quay.io/keycloak/keycloak:legacy

COPY realm-export.json /tmp/realm-export.json

ENV KEYCLOAK_IMPORT /tmp/realm-export.json

ENV KEYCLOAK_SERVER_DOMAIN=localhost
ENV KEYCLOAK_FRONTEND_URL=http://localhost:8080/auth
ENV KEYCLOAK_IDM_LOGLEVEL=DEBUG