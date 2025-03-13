---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/groups/aed0b780-965f-4149-85c5-a8c73e58brt6')
	.version('beta')
	.select('isManagementRestricted')
	.get();

```