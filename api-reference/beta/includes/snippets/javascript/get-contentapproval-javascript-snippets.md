---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let complianceChange = await client.api('/admin/windows/updates/updatePolicies/983f03cd-03cd-983f-cd03-3f98cd033f98/complianceChanges/bba2a340-1e32-b5ed-186e-678e16033319')
	.version('beta')
	.get();

```