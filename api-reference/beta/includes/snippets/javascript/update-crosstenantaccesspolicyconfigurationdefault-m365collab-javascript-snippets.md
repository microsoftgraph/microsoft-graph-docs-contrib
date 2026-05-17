---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicyConfigurationDefault = {
  m365CollaborationInbound: {
    users: {
      accessType: 'allowed',
      targets: [
        {
          target: 'AllUsers',
          targetType: 'user'
        }
      ]
    }
  }
};

await client.api('/policies/crossTenantAccessPolicy/default')
	.version('beta')
	.update(crossTenantAccessPolicyConfigurationDefault);

```