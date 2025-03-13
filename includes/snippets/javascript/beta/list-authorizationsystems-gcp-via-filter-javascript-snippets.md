---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authorizationSystems = await client.api('/external/authorizationSystems')
	.version('beta')
	.filter('authorizationSystemType eq \'gcp\'')
	.get();

```