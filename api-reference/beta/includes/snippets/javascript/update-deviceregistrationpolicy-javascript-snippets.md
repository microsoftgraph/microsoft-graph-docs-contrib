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
        isAdminConfigurable: true,
        allowedToRegister: {
            '@odata.type': '#microsoft.graph.enumeratedDeviceRegistrationMembership',
            users: [],
            groups: ['3c8ef067-8b96-44de-b2ae-557dfa0f97a0']
      }
    },
    azureADJoin: {
        isAdminConfigurable: true,
        allowedToJoin: {
            '@odata.type': '#microsoft.graph.allDeviceRegistrationMembership'
        }
    },
    localAdminPassword: {
      isEnabled: true
    }
};

await client.api('/policies/deviceRegistrationPolicy')
	.version('beta')
	.put(deviceRegistrationPolicy);

```