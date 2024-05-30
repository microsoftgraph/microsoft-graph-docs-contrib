---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedAccessGroupEligibilityScheduleInstance = await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleInstances/d5f0ad2e-6b34-401b-b6da-0c8fc2c5a3fc')
	.version('beta')
	.get();

```