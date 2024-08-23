---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedStorageQuota = await client.api('/users/1234BBS1121YY95/settings/storage/quota')
	.version('beta')
	.get();

```