---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentScheduleRequests = await client.api('/identityGovernance/privilegedAccess/group/assignmentScheduleRequests')
	.version('beta')
	.get();

```