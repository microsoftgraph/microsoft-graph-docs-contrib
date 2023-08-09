---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedAccessGroupAssignmentSchedule = await client.api('/identityGovernance/privilegedAccess/group/assignmentSchedules/8ba569e8-7024-f5f8-91ec-9b75d92897f1')
	.version('beta')
	.get();

```