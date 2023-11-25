---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let exportJobs = await client.api('/employeeExperience/goals/exportJobs')
	.version('beta')
	.get();

```