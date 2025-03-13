---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let users = await client.api('/users')
	.version('beta')
	.filter('isManagementRestricted eq true')
	.select('displayName,userPrincipalName')
	.get();

```