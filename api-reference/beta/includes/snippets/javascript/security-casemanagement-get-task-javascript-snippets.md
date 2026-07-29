---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let task = await client.api('/security/caseManagement/cases/{caseId}/tasks/{taskId}')
	.version('beta')
	.get();

```