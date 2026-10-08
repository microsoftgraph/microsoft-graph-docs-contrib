---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const crossOrganizationUserMappings = {
  '@context': '#$delta',
  value: [
    {
      sourceOrganizationId: '11111111-1111-1111-1111-111111111111',
      userType: 'regularUser',
      sourceUserIdentity: {
        userPrincipalName: 'user1@contoso.com'
      },
      targetUserIdentity: {
        userPrincipalName: 'admin@a830edad9050849ken005.onmicrosoft.com'
      },
      targetUserMigrationData: {
        email: 'admin@a830edad9050849ken005.onmicrosoft.com'
      }
    },
    {
      '@removed': {
        reason: 'deleted'
      },
      sourceUserIdentity: {
        userPrincipalName: 'user1@contoso.com'
      }
    }
  ]
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationUserMappings')
	.version('beta')
	.update(crossOrganizationUserMappings);

```