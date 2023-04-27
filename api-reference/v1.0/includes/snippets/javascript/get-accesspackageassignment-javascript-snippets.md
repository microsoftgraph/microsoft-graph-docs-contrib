---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignment = await client.api('/identityGovernance/entitlementManagement/assignments/{accessPackageAssignmentId}')
	.get();

```