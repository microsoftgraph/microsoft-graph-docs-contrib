---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageCatalog = {
  displayName: 'Catalog One'
};

await client.api('/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}')
	.update(accessPackageCatalog);

```