---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authenticationEventsFlow = await client.api('/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e')
	.version('beta')
	.get();

```