---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let permissionsRequestChange = await client.api('/identityGovernance/permissionsManagement/permissionsRequestChanges/00000000-0000-0000-0000-000000000001')
	.version('beta')
	.get();

```