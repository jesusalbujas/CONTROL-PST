```sh
sql2dbml estructura.sql -o estructura.dbml --postgres
```

```sql
UPDATE adempiere.ad_sequence
SET currentnext = 1
WHERE name = 'A_Asset';

UPDATE adempiere.ad_sequence
SET currentnext = 1
WHERE name = 'A_Asset_Delivery';

delete from a_asset_delivery
delete from a_depreciation_workfile
delete from a_asset
```