---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/users/{id}/memberOf/microsoft.graph.group')
	.version('beta')
	.filter('appRoleAssignments/$count gt 0')
	.select('id,displayName')
	.get();

```