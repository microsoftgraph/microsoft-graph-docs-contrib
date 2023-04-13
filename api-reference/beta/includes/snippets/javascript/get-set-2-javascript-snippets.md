---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let set = await client.api('/termStore/sets/8ed8c9ea-7052-4c1d-a4d7-b9c10bffea6f')
	.version('beta')
	.get();

```