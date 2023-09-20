---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedAccessGroupEligibilityScheduleRequest = await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests/534b3d4d-3ba0-8429-3568-5e9cce6c2cbd')
	.version('beta')
	.get();

```