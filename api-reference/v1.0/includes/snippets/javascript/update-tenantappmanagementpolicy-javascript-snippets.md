---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantAppManagementPolicy = {
    isEnabled: true,
    applicationRestrictions: {
        passwordCredentials: [
            {
                restrictionType: 'passwordAddition',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2021-01-01T10:37:00Z'
            },
            {
                restrictionType: 'passwordLifetime',
                maxLifetime: 'P4DT12H30M5S',
                restrictForAppsCreatedAfterDateTime: '2017-01-01T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyAddition',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2021-01-01T10:37:00Z'
            },
            {
                restrictionType: 'customPasswordAddition',
                maxLifetime: null,
                restrictForAppsCreatedAfterDateTime: '2015-01-01T10:37:00Z'
            },
            {
                restrictionType: 'symmetricKeyLifetime',
                maxLifetime: 'P40D',
                restrictForAppsCreatedAfterDateTime: '2015-01-01T10:37:00Z'
            }
        ],
        keyCredentials: [
            {
                restrictionType: 'asymmetricKeyLifetime',
                maxLifetime: 'P30D',
                restrictForAppsCreatedAfterDateTime: '2015-01-01T10:37:00Z'
            },
        ]
    }
};

await client.api('/policies/defaultAppManagementPolicy')
	.update(tenantAppManagementPolicy);

```