---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customFieldDefinition = await client.api('/security/caseManagement/caseTypeConfigurations/incidentCase/customFields/7a6b90bf-4182-4acf-d376-0e1f2a3b4c56')
	.version('beta')
	.get();

```