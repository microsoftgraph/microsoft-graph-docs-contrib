---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipal = await client.api('/servicePrincipals/7408235b-7540-4850-82fe-a5f15ed019e2')
	.select('id,appId,displayName,appRoles,oauth2PermissionScopes,resourceSpecificApplicationPermissions')
	.get();

```