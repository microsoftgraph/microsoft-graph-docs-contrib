---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleAssignmentMultiple = {
    '@odata.type': '#microsoft.graph.unifiedRoleAssignmentMultiple',
     displayName: 'Example role assignment',
    roleDefinitionId: 'b5c08161-a7af-481c-ace2-a20a69a48fb1',
    principalIds: [
        '8e811502-ebda-4782-8f81-071d17f0f892',
        '30e3492f-964c-4d73-88c6-986a53c6e2a0'
    ],
    appScopeIds: [
        'Mdc', '/CloudSet/123'
    ]
};

await client.api('/roleManagement/defender/roleAssignments')
	.version('beta')
	.post(unifiedRoleAssignmentMultiple);

```