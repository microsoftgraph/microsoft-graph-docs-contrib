---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policy = await client.api('/admin/windows/updates/policies/f316bfd9-c84e-a334-cebe-071d3c64b2c1')
	.version('beta')
	.get();

```