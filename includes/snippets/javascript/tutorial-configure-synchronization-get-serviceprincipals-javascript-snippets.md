---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.version('beta')
	.header('Authorization','Bearer {Token}')
	.filter('startswith(displayName, \'salesforce\')')
	.select('id,appId,displayName')
	.get();

```