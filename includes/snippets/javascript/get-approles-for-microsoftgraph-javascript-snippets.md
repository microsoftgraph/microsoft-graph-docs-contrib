---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.filter('displayName eq \'Microsoft Graph\'')
	.select('id,displayName,appId,appRoles')
	.get();

```