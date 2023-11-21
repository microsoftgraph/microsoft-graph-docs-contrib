---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let goalsExportJob = await client.api('/employeeExperience/goals/exportJobs/j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')
	.version('beta')
	.get();

```