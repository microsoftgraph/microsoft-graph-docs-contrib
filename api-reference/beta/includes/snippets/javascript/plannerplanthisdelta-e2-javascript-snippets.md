---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let delta = await client.api('/groups/ebf3b108-5234-4e22-b93d-656d7dae5874/planner/plans/delta')
	.version('beta')
	.get();

```