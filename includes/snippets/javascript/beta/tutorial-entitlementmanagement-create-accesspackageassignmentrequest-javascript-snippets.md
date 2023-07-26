---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
  requestType: 'UserAdd',
  accessPackageAssignment: {
     targetId: '007d1c7e-7fa8-4e33-b678-5e437acdcddc',
     assignmentPolicyId: 'db440482-1210-4a60-9b55-3ac7a72f63ba',
     accessPackageId: '88203d16-0e31-41d4-87b2-dd402f1435e9'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackageAssignmentRequests')
	.version('beta')
	.post(accessPackageAssignmentRequest);

```