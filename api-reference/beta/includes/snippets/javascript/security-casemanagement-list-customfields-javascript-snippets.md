---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customFields = await client.api('/security/caseManagement/caseTypeConfigurations/incidentCase/customFields')
	.version('beta')
	.get();

```