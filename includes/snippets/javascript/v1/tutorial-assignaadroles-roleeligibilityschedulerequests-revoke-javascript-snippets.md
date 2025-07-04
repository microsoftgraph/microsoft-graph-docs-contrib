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
    principalId: '1189bbdd-1268-4a72-8c6d-6fe77d28f2e3',
    roleDefinitionId: 'fe930be7-5e62-47db-91af-98c3a49a38b1',
    directoryScopeId: '/'
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.post(unifiedRoleEligibilityScheduleRequest);

```