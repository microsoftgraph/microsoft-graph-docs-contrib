---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activities = await client.api('/security/caseManagement/cases/{caseId}/activities')
	.version('beta')
	.get();

```