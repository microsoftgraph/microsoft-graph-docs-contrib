---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/directory/pendingExternalUserProfiles/{id}')
	.version('beta')
	.delete();

```