---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleEligibilityScheduleRequest = await client.api('/roleManagement/directory/roleEligibilityScheduleRequests/26bc6813-5457-4302-a482-afafd4e2962a')
	.version('beta')
	.get();

```