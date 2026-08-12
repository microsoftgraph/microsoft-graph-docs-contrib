---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let statusDefinition = await client.api('/security/caseManagement/caseTypeConfigurations/incidentCase/statuses/2b1f4e6a-9c3d-4b7a-8e21-5f6a7b8c9d01')
	.version('beta')
	.get();

```