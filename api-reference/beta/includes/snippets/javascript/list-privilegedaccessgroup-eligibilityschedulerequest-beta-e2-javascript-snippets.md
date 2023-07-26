---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let eligibilityScheduleRequests = await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests')
	.version('beta')
	.select('principalId,action,groupId')
	.get();

```