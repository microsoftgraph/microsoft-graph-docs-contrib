---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalUserProfiles = await client.api('/directory/externalUserProfiles')
	.version('beta')
	.get();

```