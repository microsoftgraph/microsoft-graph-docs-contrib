---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let userPasswordResetsAndChangesSummary = await client.api('/reports/authenticationMethods/userPasswordResetsAndChangesSummary')
	.version('beta')
	.get();

```