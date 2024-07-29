---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tenantAppManagementPolicy = {
  id: 'd015220e-9789-4e8e-bbcc-270fe419229d',
  description: 'Lorem ipsum',
  displayName: 'Credential management policy',
  isEnabled: true,
  applicationRestrictions: {
    passwordCredentials: [
      {
        restrictionType: 'passwordLifetime',
        maxLifetime: 'P14D',
        restrictForAppsCreatedAfterDateTime: '2020-01-01T07:00:00Z'
      }
    ],
    keyCredentials: [
      {
        restrictionType: 'certificateLifetime',
        restrictForAppsCreatedAfterDateTime: '2020-01-01T10:37:00Z',
        maxLifetime: 'P90D'
      },
      {
        restrictionType: 'trustedCertificateAuthority',
        certificateBasedApplicationConfigurationIds: [
          'eec5ba11-2fc0-4113-83a2-ed986ed13743'
        ],
        restrictForAppsCreatedAfterDateTime: '2019-10-19T10:37:00Z'
      }
    ]
  }
};

await client.api('/policies/defaultAppManagementPolicy')
	.update(tenantAppManagementPolicy);

```