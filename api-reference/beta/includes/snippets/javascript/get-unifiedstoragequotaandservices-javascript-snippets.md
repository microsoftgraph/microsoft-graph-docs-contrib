---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedStorageQuota = await client.api('/me/settings/storage/quota')
	.version('beta')
	.expand('services')
	.get();

```