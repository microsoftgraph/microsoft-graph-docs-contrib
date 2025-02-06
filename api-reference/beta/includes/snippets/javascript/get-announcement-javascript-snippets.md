---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let announcement = await client.api('/identity/productChanges/microsoft.graph.announcement/ddde9e3b-7ee4-4066-a62e-fb1fc5fb87a1')
	.version('beta')
	.get();

```