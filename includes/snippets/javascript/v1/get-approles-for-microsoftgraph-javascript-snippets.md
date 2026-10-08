---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.filter('appId eq \'00000003-0000-0000-c000-000000000000\'')
	.select('id,displayName,appId,appRoles')
	.get();

```