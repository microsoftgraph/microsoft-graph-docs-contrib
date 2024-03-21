---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let forwardingOptions = await client.api('/networkAccess/settings/forwardingOptions')
	.version('beta')
	.get();

```