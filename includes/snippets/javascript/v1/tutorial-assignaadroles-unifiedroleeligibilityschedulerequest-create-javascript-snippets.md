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
    principalId: '1189bbdd-1268-4a72-8c6d-6fe77d28f2e3',
    scheduleInfo: {
        startDateTime: '2025-03-21T11:06:00Z',
        expiration: {
            endDateTime: '2026-03-21T00:00:00Z',
            type: 'AfterDateTime'
        }
    }
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.post(unifiedRoleEligibilityScheduleRequest);

```