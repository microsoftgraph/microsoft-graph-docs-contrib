---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
    requestType: 'userAdd',
    assignment: {
        accessPackageId: 'd7be3253-b9c6-4fab-adef-30d30de8da2b'
    }
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.post(accessPackageAssignmentRequest);

```