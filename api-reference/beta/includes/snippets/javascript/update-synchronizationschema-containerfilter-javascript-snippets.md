---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const synchronizationSchema = {
    directories: [
        {
            name: 'Azure Active Directory',
            objects: [
                {
                    name: 'User',
                    attributes: [
                        {
                            name: 'userPrincipalName',
                            type: 'string'
                        }
                    ]
                }
            ]
        },
        {
            name: 'Active Directory'
        }
    ],
    synchronizationRules: [
        {
            containerFilter: {
                includedContainers: [
                    'OU=In-Scope OU 1,DC=contoso,DC=com',
                    'OU=In-Scope OU 2,DC=contoso,DC=com',
                ]
            },
            groupFilter: {
                includedGroups: []
            },
            name: 'AD2AADProvisioning',
            sourceDirectoryName: 'Active Directory',
            targetDirectoryName: 'Azure Active Directory',
            objectMappings: [
                {
                    name: 'Provision Active Directory users',
                    sourceObjectName: 'user',
                    targetObjectName: 'User',
                    attributeMappings: [
                        {
                            source: {},
                            targetAttributeName: 'DisplayName'
                        }
                    ]
                }
            ]
        }
    ]
};

await client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema')
	.version('beta')
	.put(synchronizationSchema);

```