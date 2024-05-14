---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalUserProfile = await client.api('/directory/externalUserProfiles/{id}')
	.version('beta')
	.get();

```