---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profiles = await client.api('/identity/verifiedId/profiles')
	.version('beta')
	.get();

```