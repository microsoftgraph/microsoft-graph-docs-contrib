---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpAuthorizationSystemTypeAction = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/actions/Y29tcHV0ZS5hZGRyZXNzZXMuY3JlYXRl')
	.version('beta')
	.get();

```