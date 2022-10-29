---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let extensionProperties = await client.api('/applications/fd918e4b-c821-4efb-b50a-5eddd23afc6f/extensionProperties')
	.version('beta')
	.get();

```