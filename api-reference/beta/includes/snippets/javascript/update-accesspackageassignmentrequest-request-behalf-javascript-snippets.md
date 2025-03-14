---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
   assignment: {
       accessPackageId: '5b98f958-0dea-4a5b-836e-109dccbd530c',
       schedule: {
           startDateTime: null,
           stopDateTime: null
       },
       assignmentPolicyId: 'c5f7847f-83a8-4315-a754-d94a6f39b875',
       target: {
           displayName: 'Idris Ibrahim',
           email: 'IdrisIbrahim@woodgrovebank.com',
           objectId: '21aceaba-fe13-4e3b-aa8c-4c588d5e7387',
           subjectType: 'user'
       }
   },
   justification: 'Access for direct employee',
   requestType: 'UserAdd',
   answers: []
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.version('beta')
	.post(accessPackageAssignmentRequest);

```