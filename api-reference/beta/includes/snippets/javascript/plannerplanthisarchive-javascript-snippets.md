---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const archive = {
  justification: 'String'
};

await client.api('/planner/plans/{planId}/archive')
	.version('beta')
	.post(archive);

```