---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filterByCurrentUser = await client.api('/roleManagement/directory/roleAssignmentScheduleInstances/filterByCurrentUser(on='principal')')
	.version('beta')
	.get();

```