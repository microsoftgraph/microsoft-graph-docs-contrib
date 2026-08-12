---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let caseTypeConfiguration = await client.api('/security/caseManagement/caseTypeConfigurations/incidentCase')
	.version('beta')
	.get();

```