---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let exportJobs = await client.api('/employeeexperience/goals/exportJobs')
	.version('beta')
	.filter(' goalsOrganizationId eq \'3d9a8150-90fd-42bd-9777-25ba783d4a05\'')
	.get();

```