---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerRoster = {
    assignmentMethod: 'standard',
    sensitivityLabelId: '7a4d7cc1-f72b-46a3-9831-02680eaf56f9'
};

await client.api('/planner/rosters/3e34de02-b01d-423b-b2ae-ca0ccd1fab05/assignSensitivityLabel')
	.version('beta')
	.post(plannerRoster);

```