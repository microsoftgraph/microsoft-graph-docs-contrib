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
                state: 'enabled',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2019-10-19T10:37:00Z'
            },
            {
                restrictionType: 'passwordLifetime',
                state: 'enabled',
                maxLifetime: 'P90D',
                restrictForAppsCreatedAfterDateTime: '2014-10-19T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyAddition',
                state: 'enabled',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2019-10-19T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyLifetime',
                state: 'enabled',
                maxLifetime: 'P90D',
                restrictForAppsCreatedAfterDateTime: '2014-10-19T10:37:00Z'
            }
        ],
        keyCredentials: [],
        applicationRestrictions: {
            identifierUris: {
                nonDefaultUriAddition: {
                    state: 'disabled',
                    restrictForAppsCreatedAfterDateTime: null,
                    excludeAppsReceivingV2Tokens: true,
                    excludeSaml: true
                }
            }
        }
    }
};

await client.api('/policies/appManagementPolicies')
	.version('beta')
	.post(appManagementPolicy);

```