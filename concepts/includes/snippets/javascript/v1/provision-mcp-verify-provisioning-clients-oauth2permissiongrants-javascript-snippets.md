---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let oauth2PermissionGrants = await client.api('/oauth2PermissionGrants')
	.filter('clientId eq \'{mcp-client-servicePrincipal}\' and resourceId eq \'{mcp-server-servicePrincipal}\'')
	.select('id,clientId,resourceId,scope')
	.get();

```