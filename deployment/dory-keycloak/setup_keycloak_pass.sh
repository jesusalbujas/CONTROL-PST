#!/bin/bash
set -e

echo "Logging into Keycloak..."
docker exec pst.3.keycloak.service /opt/keycloak/bin/kcadm.sh config credentials --server http://localhost:8080 --realm master --user admin --password admin

echo "Setting password 'DoryAdmin123#@' for admin@dory.com..."
docker exec pst.3.keycloak.service /opt/keycloak/bin/kcadm.sh set-password -r adempiere --username admin@dory.com --new-password 'DoryAdmin123#@' || echo "Password set failed or ignored."

echo "Assigning dory_admin role to admin@dory.com..."
docker exec pst.3.keycloak.service /opt/keycloak/bin/kcadm.sh add-roles -r adempiere --uusername admin@dory.com --rolename dory_admin || echo "Role assignment failed."

echo "Assigning dory_admin role to jalbujas@erpya.com..."
docker exec pst.3.keycloak.service /opt/keycloak/bin/kcadm.sh add-roles -r adempiere --uusername jalbujas@erpya.com --rolename dory_admin || echo "jalbujas not found."

echo "Assigning dory_admin role to dperez@erpya.com..."
docker exec pst.3.keycloak.service /opt/keycloak/bin/kcadm.sh add-roles -r adempiere --uusername dperez@erpya.com --rolename dory_admin || echo "dperez not found."

echo "Done"
