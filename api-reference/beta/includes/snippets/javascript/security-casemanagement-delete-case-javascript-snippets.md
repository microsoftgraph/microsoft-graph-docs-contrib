---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/security/caseManagement/cases/{caseId}')
	.version('beta')
	.delete();

```