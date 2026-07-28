---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let activity = await client.api('/security/caseManagement/cases/{caseId}/activities/{activityId}')
	.version('beta')
	.get();

```