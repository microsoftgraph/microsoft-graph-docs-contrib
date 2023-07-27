---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    appRoleAssignmentRequired: true
};

await client.api('/servicePrincipals/89473e09-0737-41a1-a0c3-1418d6908bcd')
	.update(servicePrincipal);

```