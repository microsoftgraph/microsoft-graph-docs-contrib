---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipalSignInActivities = await client.api('/reports/servicePrincipalSignInActivities')
	.version('beta')
	.get();

```