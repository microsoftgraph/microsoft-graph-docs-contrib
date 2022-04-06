---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/roleManagement/directory/roleAssignmentScheduleRequests/15fec3d4-64b1-4b03-beb7-f1ba6dddf6cc/cancel')
	.version('beta')
	.post();

```