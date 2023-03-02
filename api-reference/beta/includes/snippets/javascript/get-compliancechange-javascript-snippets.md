---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let complianceChange = await client.api('/admin/windows/updates/updatePolicies/983f03cd-03cd-983f-cd03-3f98cd033f98/complianceChanges/fcb57826-daaa-c8ac-bf9d-137b74a90a14')
	.version('beta')
	.get();

```