---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getByUserRole = await client.api('/solutions/virtualEvents/townhalls/getByUserRole(role='organizer')')
	.version('beta')
	.get();

```