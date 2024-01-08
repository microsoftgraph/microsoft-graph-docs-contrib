---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminAppsAndServices = {
  '@odata.type': '#microsoft.graph.adminAppsAndServices',
  settings: {
    '@odata.type': 'microsoft.graph.appsAndServicesSettings',
    isOfficeStoreEnabled: false,
    isAppAndServicesTrialEnabled: false
  }
};

await client.api('/admin/appsAndServices')
	.version('beta')
	.update(adminAppsAndServices);

```