---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleEligibilitySchedule = await client.api('/roleManagement/directory/roleEligibilitySchedules/313af44a-07c9-43a7-9970-5072a6b5591f')
	.version('beta')
	.get();

```