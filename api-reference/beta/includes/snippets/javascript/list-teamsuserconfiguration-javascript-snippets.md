---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userConfigurations = await client.api('/admin/teams/userConfigurations')
	.version('beta')
	.get();

```