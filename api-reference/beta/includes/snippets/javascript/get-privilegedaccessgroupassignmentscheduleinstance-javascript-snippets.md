---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let privilegedAccessGroupAssignmentScheduleInstance = await client.api('/identityGovernance/privilegedAccess/group/assignmentScheduleInstances/48fe5560-de56-2750-ae7c-2bbf1da9e452')
	.version('beta')
	.get();

```