---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identityGovernance/permissionsManagement/scheduledPermissionsRequests/{scheduledPermissionsRequestId}/cancelAll')
	.version('beta')
	.post();

```