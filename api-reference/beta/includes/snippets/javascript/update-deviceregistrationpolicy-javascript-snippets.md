---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceRegistrationPolicy = {
    id: 'deviceRegistrationPolicy',
    displayName: 'Device Registration Policy',
    description: 'Tenant-wide policy that manages intial provisioning controls using quota restrictions, additional authentication and authorization checks',
    userDeviceQuota: 50,
    multiFactorAuthConfiguration: '0',
    azureADRegistration: {
        appliesTo: '1',
        isAdminConfigurable: false,
        allowedUsers: [],
        allowedGroups: []
    },
    azureADJoin: {
        appliesTo: '1',
        isAdminConfigurable: true,
        allowedUsers: [],
        allowedGroups: []
    },
    localAdminPassword: {
      isEnabled: true
    }
};

await client.api('/policies/deviceRegistrationPolicy')
	.version('beta')
	.put(deviceRegistrationPolicy);

```