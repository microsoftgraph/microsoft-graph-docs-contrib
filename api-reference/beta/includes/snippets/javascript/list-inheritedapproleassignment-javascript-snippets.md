---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let inheritedAppRoleAssignments = await client.api('/servicePrincipals/microsoft.graph.agentIdentity/b3f37624-8113-471c-9de3-0234828e3ca2/inheritedAppRoleAssignments')
	.version('beta')
	.get();

```