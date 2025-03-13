---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentRequest = {
    '@odata.type': '#microsoft.graph.accessPackageAssignmentRequest',
    requestType: 'adminUpdate',
    schedule: {
        startDateTime: '2023-05-23T20:04:02.39Z',
        recurrence: null,
        expiration: {
            endDateTime: '2024-07-01T00:00:00.00Z',
            duration: null,
            type: 'afterDateTime'
        }
    },
    assignment: {
        id: '329f8dac-8062-4c1b-a9b8-39b7132f9bff'
    }
};

await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.post(accessPackageAssignmentRequest);

```