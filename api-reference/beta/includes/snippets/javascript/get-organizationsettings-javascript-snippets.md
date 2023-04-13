---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let organizationSettings = await client.api('/organization/a9f3c90b-04fd-4504-a302-47672bbca6c8/settings')
	.version('beta')
	.get();

```