---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let actions = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions')
	.version('beta')
	.filter('service/id eq \'compute\'')
	.get();

```