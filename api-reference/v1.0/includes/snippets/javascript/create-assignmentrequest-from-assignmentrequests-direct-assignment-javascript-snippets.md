---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
  requestType: 'AdminAdd',
  assignment: {
     target: {
        email: 'user@contoso.com'
     },
     assignmentPolicy: {
        id: '11114b50-0a08-4f96-83e9-1d714aa2cd79'
     },
     accessPackage: {
        id: '11115C72-0612-4C43-A044-FC0A4E71A4C5'
     }
  }
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.post(accessPackageAssignmentRequest);

```