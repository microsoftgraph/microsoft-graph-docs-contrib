---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let richLongRunningOperation = await client.api('/sites/{siteId}/operations/{richLongRunningOperation-ID}')
	.version('beta')
	.get();

```