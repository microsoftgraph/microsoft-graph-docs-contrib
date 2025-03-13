---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedAccessGroupEligibilitySchedule = await client.api('/identityGovernance/privilegedAccess/group/eligibilitySchedules/37bf27ec-70a7-60e0-8239-aa3ffa7719ac')
	.version('beta')
	.get();

```