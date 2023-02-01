---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleEligibilityScheduleRequest = {
    action: 'AdminRemove',
    justification: 'Assign User Admin eligibility to IT Helpdesk (User) group',
    roleDefinitionId: 'fdd7a751-b60b-444a-984c-02652fe8fa1c',
    directoryScopeId: '/',
    principalId: '07706ff1-46c7-4847-ae33-3003830675a1',
    scheduleInfo: {
        startDateTime: '2021-07-26T18:08:06.2081758Z',
        expiration: {
            endDateTime: '2022-06-30T00:00:00Z',
            type: 'AfterDateTime'
        }
    }
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.version('beta')
	.post(unifiedRoleEligibilityScheduleRequest);

```