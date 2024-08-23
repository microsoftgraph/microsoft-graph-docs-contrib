---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceRegistrationPolicy = {
  userDeviceQuota: 2,
  multiFactorAuthConfiguration: 'notRequired',
  azureADRegistration: {
    isAdminConfigurable: false,
    allowedToRegister: {
      '@odata.type': '#microsoft.graph.enumeratedDeviceRegistrationMembership',
      users: ['3c8ef067-8b96-44de-b2ae-557dfa0f97a0'],
      groups: []
    },
  },
  azureADJoin: {
    isAdminConfigurable: true,
    allowedToJoin: {
      '@odata.type': '#microsoft.graph.allDeviceRegistrationMembership'
    },
    localAdmins: {
      enableGlobalAdmins: false,
      registeringUsers: {
        '@odata.type': '#microsoft.graph.noDeviceRegistrationMembership'
      }
    },
  },
  localAdminPassword: {
    isEnabled: true
  }
};

await client.api('/policies/deviceRegistrationPolicy')
	.version('beta')
	.put(deviceRegistrationPolicy);

```