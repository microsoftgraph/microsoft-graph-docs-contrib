---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleEligibilityScheduleRequest = {
    action: 'adminRemove',
    roleDefinitionId: '8424c6f0-a189-499e-bbd0-26c1753c96d4',
    directoryScopeId: '/',
    principalId: '071cc716-8147-4397-a5ba-b2105951cc0b'
};

await client.api('/roleManagement/directory/roleEligibilityScheduleRequests')
	.version('beta')
	.post(unifiedRoleEligibilityScheduleRequest);

```