---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/directory/administrativeUnits/8a07f5a8-edc9-4847-bbf2-dde106594bf4/members')
	.get();

```