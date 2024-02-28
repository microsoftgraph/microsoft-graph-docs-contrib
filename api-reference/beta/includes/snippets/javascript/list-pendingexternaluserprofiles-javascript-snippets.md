---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pendingExternalUserProfiles = await client.api('/directory/pendingExternalUserProfiles')
	.version('beta')
	.get();

```