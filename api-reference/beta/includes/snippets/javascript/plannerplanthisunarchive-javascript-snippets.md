---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unarchive = {
  justification: 'String'
};

await client.api('/planner/plans/{planId}/unarchive')
	.version('beta')
	.post(unarchive);

```