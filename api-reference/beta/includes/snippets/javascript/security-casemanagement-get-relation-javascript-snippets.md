---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let relation = await client.api('/security/caseManagement/cases/{caseId}/relations/{relationId}')
	.version('beta')
	.get();

```