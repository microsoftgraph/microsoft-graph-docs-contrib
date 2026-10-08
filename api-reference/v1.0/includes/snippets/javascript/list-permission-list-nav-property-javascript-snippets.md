---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissions = await client.api('/sites/60a53b69-1342-4e9a-9d66-d2288f214b68/lists/b5dabb84-f89f-4317-a884-99b3d2067c2c/permissions')
	.get();

```