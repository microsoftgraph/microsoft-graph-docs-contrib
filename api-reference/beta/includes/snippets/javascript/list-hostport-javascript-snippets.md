---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ports = await client.api('/security/threatIntelligence/hosts/8.8.8.8/ports')
	.version('beta')
	.get();

```