---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relations = await client.api('/security/caseManagement/cases/{caseId}/relations')
	.version('beta')
	.get();

```