---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let user = await client.api('/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals(directoryScopeType='tenant')/microsoft.graph.user')
	.version('beta')
	.get();

```