---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointMigrationTask = {
  parameters: {
    '@odata.type': '#microsoft.graph.sharePointUserMigrationTaskParameters',
    targetOrganizationHost: 'https://fabrico-my.sharepoint.com',
    sourceUserIdentity: {
      userPrincipalName: 'source-user@contoso.onmicrosoft.com'
    },
    targetUserIdentity: {
      userPrincipalName: 'target-user@fabrico.onmicrosoft.com'
    },
    preferredStartDateTime: '2024-08-31T16:00:00Z'
  }
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks')
	.version('beta')
	.post(sharePointMigrationTask);

```