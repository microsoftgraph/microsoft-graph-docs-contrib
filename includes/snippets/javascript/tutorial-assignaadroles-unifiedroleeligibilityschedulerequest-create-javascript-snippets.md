---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleEligibilityScheduleRequest = {
    action: 'AdminAssign',
    justification: 'Assign User Admin eligibility to IT Helpdesk (User) group',
    roleDefinitionId: 'fe930be7-5e62-47db-91af-98c3a49a38b1',
    directoryScopeId: '/',
    principalId: 'e77cbb23-0ff2-4e18-819c-690f58269752',
    scheduleInfo: {
        startDateTime: '2021-07-01T00:00:00Z',
        expiration: {
            endDateTime: '2022-06-30T00:00:00Z',
            type: 'AfterDateTime'
        }
    }
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.post(unifiedRoleEligibilityScheduleRequest);

```