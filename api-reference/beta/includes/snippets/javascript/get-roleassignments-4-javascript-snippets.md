---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let roleAssignments = await client.api('/roleManagement/exchange/roleAssignments')
	.version('beta')
	.filter('principalId eq \'/ServicePrincipals/5d39cc4d-ba68-4c44-92c7-5056e3a1ce39\'')
	.get();

```