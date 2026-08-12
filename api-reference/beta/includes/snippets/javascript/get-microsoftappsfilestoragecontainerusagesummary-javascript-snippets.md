---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let microsoftAppsFileStorageContainerUsage = await client.api('/reports/microsoftAppsFileStorageContainerUsageSummary')
	.version('beta')
	.get();

```