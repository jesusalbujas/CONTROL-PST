#!/bin/bash
set -e

echo "Logging into Keycloak..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080 --realm master --user admin --password admin

echo "Ensuring dory-client exists in adempiere realm..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh create clients -r adempiere -s clientId=dory-client -s enabled=true -s directAccessGrantsEnabled=true -s publicClient=true -s 'redirectUris=["http://localhost:3000/*"]' -s 'webOrigins=["+"]' || echo "Client already exists or error ignored."

echo "Creating dory_admin role..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh create roles -r adempiere -s name=dory_admin || echo "Role already exists."

echo "Creating dory_user role..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh create roles -r adempiere -s name=dory_user || echo "Role already exists."

echo "Creating admin@dory.com user..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh create users -r adempiere -s username=admin@dory.com -s email=admin@dory.com -s enabled=true -s emailVerified=true -s firstName=Admin -s lastName=Dory || echo "User already exists."

echo "Setting password 'DoryAdmin123#@' for admin@dory.com..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh set-password -r adempiere --username admin@dory.com --new-password 'DoryAdmin123#@' || echo "Password set failed or ignored."

echo "Assigning dory_admin role to admin@dory.com..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh add-roles -r adempiere --uusername admin@dory.com --rolename dory_admin || echo "Role assignment failed or ignored."

echo "Setting dory-theme as default login theme for adempiere realm..."
docker exec dory_keycloak_app /opt/keycloak/bin/kcadm.sh update realms/adempiere -s loginTheme=dory-theme || echo "Theme assignment failed."

echo "Keycloak setup complete!"
