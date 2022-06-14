---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/directory/administrativeUnits/c5729e7c-988e-417b-b287-14f5bd4711d8/members')
	.get();

```