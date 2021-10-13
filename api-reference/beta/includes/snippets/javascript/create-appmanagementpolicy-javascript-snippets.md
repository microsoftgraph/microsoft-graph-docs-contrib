---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const appManagementPolicy = {
    displayName: 'Credential management policy',
    description: 'Cred policy sample',
    isEnabled: true,
    restrictions: {
        passwordCredentials: [
            {
                restrictionType: 'passwordAddition',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2019-10-19T10:37:00Z'
            },
            {
                restrictionType: 'passwordLifetime',
                maxLifetime: 'P4DT12H30M5S',
                restrictForAppsCreatedAfterDateTime: '2018-10-19T10:37:00Z'
            }
        ]
    }
};

await client.api('/policies/appManagementPolicies')
	.version('beta')
	.post(appManagementPolicy);

```