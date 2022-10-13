---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
    requestType: 'adminRemove',
    assignment: {
     id: 'a6bb6942-3ae1-4259-9908-0133aaee9377'
    }
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.post(accessPackageAssignmentRequest);

```