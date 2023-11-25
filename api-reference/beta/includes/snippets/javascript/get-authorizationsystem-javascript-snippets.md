---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authorizationSystem = await client.api('/external/authorizationSystems/956987887735')
	.version('beta')
	.get();

```