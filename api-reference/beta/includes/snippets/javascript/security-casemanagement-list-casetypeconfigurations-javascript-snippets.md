---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let caseTypeConfigurations = await client.api('/security/caseManagement/caseTypeConfigurations')
	.version('beta')
	.get();

```