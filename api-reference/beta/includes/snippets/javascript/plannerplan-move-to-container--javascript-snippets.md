---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerPlan = {
    container: {
        containerId: 'groupId',
        type: 'group'
    }
};

await client.api('/planner/plans/{planId}/moveToContainer')
	.version('beta')
	.post(plannerPlan);

```