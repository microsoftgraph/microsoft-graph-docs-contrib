---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpRole = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/roles/cm9sZXMvYmFja3VwZHIuY29tcHV0ZUVuZ2luZU9wZXJhdG9y')
	.version('beta')
	.get();

```