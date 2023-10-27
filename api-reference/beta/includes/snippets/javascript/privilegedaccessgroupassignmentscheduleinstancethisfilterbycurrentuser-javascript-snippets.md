---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filterByCurrentUser = await client.api('/identityGovernance/privilegedAccess/group/assignmentScheduleInstances/filterByCurrentUser(on='principal')')
	.version('beta')
	.get();

```