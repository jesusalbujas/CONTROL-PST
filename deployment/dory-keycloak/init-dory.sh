#!/bin/bash
set -e

CONTAINER="dory_keycloak_app"
KCADM="/opt/keycloak/bin/kcadm.sh"

echo "Logging into new Keycloak..."
docker exec $CONTAINER $KCADM config credentials --server http://localhost:8080 --realm master --user admin --password admin

echo "Creating 'dory' realm..."
docker exec $CONTAINER $KCADM create realms -s realm=dory -s enabled=true || echo "Realm already exists."

echo "Creating dory-client..."
docker exec $CONTAINER $KCADM create clients -r dory -s clientId=dory-client -s enabled=true -s directAccessGrantsEnabled=true -s publicClient=true -s 'redirectUris=["http://localhost:3000/*"]' -s 'webOrigins=["+"]' || echo "Client already exists."

echo "Creating dory_admin role..."
docker exec $CONTAINER $KCADM create roles -r dory -s name=dory_admin || echo "Role already exists."

echo "Creating dory_user role..."
docker exec $CONTAINER $KCADM create roles -r dory -s name=dory_user || echo "Role already exists."

echo "Creating admin@dory.com user..."
docker exec $CONTAINER $KCADM create users -r dory -s username=admin@dory.com -s email=admin@dory.com -s enabled=true -s emailVerified=true -s firstName=Admin -s lastName=Dory || echo "User already exists."

echo "Setting password 'DoryAdmin123#@' for admin@dory.com..."
docker exec $CONTAINER $KCADM set-password -r dory --username admin@dory.com --new-password 'DoryAdmin123#@' || echo "Password set failed."

echo "Assigning dory_admin role to admin@dory.com..."
docker exec $CONTAINER $KCADM add-roles -r dory --uusername admin@dory.com --rolename dory_admin || echo "Role assignment failed."

echo "Setting dory-theme as default login theme for dory realm..."
docker exec $CONTAINER $KCADM update realms/dory -s loginTheme=dory-theme || echo "Theme assignment failed."

echo "Init complete!"
