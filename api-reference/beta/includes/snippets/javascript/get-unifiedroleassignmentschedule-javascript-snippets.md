---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleAssignmentSchedule = await client.api('/roleManagement/directory/roleAssignmentSchedules/226faf5f-61b4-40bb-8726-52e48ec914de')
	.version('beta')
	.get();

```