---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignedPrincipals = await client.api('/roleManagement/directory/roleDefinitions/644ef478-e28f-4e28-b9dc-3fdde9aa0b1f/assignedPrincipals(directoryScopeType='administrativeUnit', directoryScopeId ='d0c2e067-9ae9-4dbf-a280-51a51c46f432')')
	.version('beta')
	.get();

```