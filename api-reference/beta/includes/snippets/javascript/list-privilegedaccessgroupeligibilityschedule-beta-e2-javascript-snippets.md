---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let eligibilitySchedules = await client.api('/identityGovernance/privilegedAccess/group/eligibilitySchedules')
	.version('beta')
	.select('accessId,principalId,groupId')
	.get();

```