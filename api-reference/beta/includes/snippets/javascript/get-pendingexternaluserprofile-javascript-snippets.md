---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pendingExternalUserProfile = await client.api('/directory/pendingExternalUserProfiles/{id}')
	.version('beta')
	.get();

```