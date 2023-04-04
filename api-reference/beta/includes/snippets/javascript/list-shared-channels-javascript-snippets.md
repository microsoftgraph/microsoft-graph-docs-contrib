---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let channels = await client.api('/teams/6a720ba5-7373-463b-bc9f-4cd04b5c6742/channels')
	.version('beta')
	.filter('membershipType eq \'shared\'')
	.get();

```