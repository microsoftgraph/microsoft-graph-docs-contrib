---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directoryObject = await client.api('/users/37b16a99-97fe-47fe-9a58-4257059b3463/invitedBy')
	.version('beta')
	.get();

```