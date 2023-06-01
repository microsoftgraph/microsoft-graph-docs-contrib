---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationEventsFlows = await client.api('/identity/authenticationEventsFlows')
	.version('beta')
	.get();

```