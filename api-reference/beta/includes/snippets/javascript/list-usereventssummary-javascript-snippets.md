---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userEventsSummary = await client.api('/reports/authenticationMethods/userEventsSummary')
	.version('beta')
	.get();

```