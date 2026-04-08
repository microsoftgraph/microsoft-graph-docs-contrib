---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let governanceRelationships = await client.api('/directory/tenantGovernance/governanceRelationships')
	.version('beta')
	.get();

```