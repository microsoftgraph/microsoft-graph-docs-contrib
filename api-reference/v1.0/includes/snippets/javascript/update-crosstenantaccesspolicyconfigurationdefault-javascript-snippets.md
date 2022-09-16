---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossTenantAccessPolicyConfigurationDefault = {
  b2bCollaborationOutbound: 
  {
    usersAndGroups: 
    {
      accessType: 'blocked',
      targets: [
        {
          target: '0be493dc-cb56-4a53-936f-9cf64410b8b0',
          targetType: 'group'
        }
      ]
    },
    applications: 
    {
      accessType: 'blocked',
      targets: [
        {
          target: 'AllApplications',
          targetType: 'application'
        }
      ]
    }
  }
};

await client.api('/policies/crossTenantAccessPolicy/default')
	.update(crossTenantAccessPolicyConfigurationDefault);

```