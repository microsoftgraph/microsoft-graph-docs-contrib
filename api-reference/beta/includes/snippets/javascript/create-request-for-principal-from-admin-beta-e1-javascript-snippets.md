---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const privilegedAccessGroupEligibilityScheduleRequest = {
    accessId: 'member',
    principalId: '3cce9d87-3986-4f19-8335-7ed075408ca2',
    groupId: '2b5ed229-4072-478d-9504-a047ebd4b07d',
    action: 'AdminAssign',
    scheduleInfo: {
        startDateTime: '2023-02-06T19:25:00.000Z',
        expiration: {
            type: 'AfterDateTime',
            endDateTime: '2023-02-07T19:56:00.000Z'
        }
    },
    justification: 'Assign eligible request.'
};

await client.api('/identityGovernance/privilegedAccess/group/eligibilityScheduleRequests')
	.version('beta')
	.post(privilegedAccessGroupEligibilityScheduleRequest);

```