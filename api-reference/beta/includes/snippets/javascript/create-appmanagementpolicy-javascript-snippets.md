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
                maxLifetime: 'P90D',
                restrictForAppsCreatedAfterDateTime: '2014-10-19T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyAddition',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2019-10-19T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyLifetime',
                maxLifetime: 'P30D',
                restrictForAppsCreatedAfterDateTime: '2014-10-19T10:37:00Z'
            }
        ],
        keyCredentials: [
            {
                restrictionType: 'asymmetricKeyLifetime',
                maxLifetime: 'P90D',
                restrictForAppsCreatedAfterDateTime: '2014-10-19T10:37:00Z'
            }
        ]
    }
};

await client.api('/policies/appManagementPolicies')
	.version('beta')
	.post(appManagementPolicy);

```