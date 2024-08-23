---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const goalsExportJob = {
  goalsOrganizationId: 'String',
  explorerViewId: 'String'
};

await client.api('/employeeExperience/goals/exportJobs')
	.version('beta')
	.post(goalsExportJob);

```