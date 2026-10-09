---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let statuses = await client.api('/security/caseManagement/caseTypeConfigurations/incidentCase/statuses')
	.version('beta')
	.get();

```