echo "CREATE DATABASE trumptown" | psql

psql trumptown < trumptown-datastore.sql

echo "ALTER TABLE trumptown_datastore_agencies RENAME TO agencies;
  ALTER TABLE trumptown_datastore_compensation_sources RENAME TO compensation_sources;
  ALTER TABLE trumptown_datastore_employment_agreements RENAME TO employment_agreements;
  ALTER TABLE trumptown_datastore_employment_assets RENAME TO employment_assets;
  ALTER TABLE trumptown_datastore_gifts RENAME TO gifts;
  ALTER TABLE trumptown_datastore_liabilities RENAME TO liabilities;
  ALTER TABLE trumptown_datastore_lobbyists RENAME TO lobbyists;
  ALTER TABLE trumptown_datastore_organization_roles RENAME TO organization_roles;
  ALTER TABLE trumptown_datastore_organizations RENAME TO organizations;
  ALTER TABLE trumptown_datastore_other_income_assets RENAME TO other_income_assets;
  ALTER TABLE trumptown_datastore_outside_government_positions RENAME TO outside_government_positions;
  ALTER TABLE trumptown_datastore_spouse_employment_assets RENAME TO spouse_employment_assets;
  ALTER TABLE trumptown_datastore_staffers RENAME TO staffers;
  ALTER TABLE trumptown_datastore_transactions RENAME TO transactions;" | psql -d trumptown
