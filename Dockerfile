FROM quay.io/keycloak/keycloak:latest

COPY realm-export.json /tmp/realm-export.json

ENV KEYCLOAK_IMPORT /tmp/realm-export.json