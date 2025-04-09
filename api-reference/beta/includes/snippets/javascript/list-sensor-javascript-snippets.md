---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensors = await client.api('/security/identities/sensors')
	.version('beta')
	.get();

```