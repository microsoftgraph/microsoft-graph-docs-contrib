---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let serviceStorageQuotaBreakdown = await client.api('/me/settings/storage/quota/services/OneDrive')
	.version('beta')
	.get();

```