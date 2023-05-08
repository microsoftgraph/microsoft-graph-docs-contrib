---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/admin/windows/updates/updatePolicies/983f03cd-03cd-983f-cd03-3f98cd033f98/complianceChanges/7433af82-ce06-4ac6-a30f-d3420f4564f5')
	.version('beta')
	.delete();

```