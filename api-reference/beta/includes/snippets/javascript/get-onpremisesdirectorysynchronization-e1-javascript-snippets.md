---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onPremisesDirectorySynchronization = await client.api('/directory/onPremisesSynchronization/{id}')
	.version('beta')
	.get();

```