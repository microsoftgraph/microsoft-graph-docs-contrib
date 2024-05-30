---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filteringProfiles = await client.api('/networkAccess/filteringProfiles')
	.version('beta')
	.get();

```