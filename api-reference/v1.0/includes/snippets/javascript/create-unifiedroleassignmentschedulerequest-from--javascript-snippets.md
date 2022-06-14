---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignmentScheduleRequest = {
    action: 'adminAssign',
    justification: 'Assign Groups Admin to IT Helpdesk group',
    roleDefinitionId: 'fdd7a751-b60b-444a-984c-02652fe8fa1c',
    directoryScopeId: '/',
    principalId: '071cc716-8147-4397-a5ba-b2105951cc0b',
    scheduleInfo: {
        startDateTime: '2022-04-10T00:00:00Z',
        expiration: {
            type: 'NoExpiration'
        }
    }
};

await client.api('/roleManagement/directory/roleAssignmentScheduleRequests')
	.post(unifiedRoleAssignmentScheduleRequest);

```