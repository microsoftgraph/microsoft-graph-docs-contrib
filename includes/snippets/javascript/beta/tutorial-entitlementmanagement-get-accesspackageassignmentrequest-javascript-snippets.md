---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let accessPackageAssignmentRequest = await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests/a6bb6942-3ae1-4259-9908-0133aaee9377')
	.version('beta')
	.get();

```