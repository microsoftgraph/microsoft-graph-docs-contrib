---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let goals = await client.api('/planner/plans/V5pBRwb_vEugGKGpZuLnX5UAG9iy/goals')
	.version('beta')
	.get();

```