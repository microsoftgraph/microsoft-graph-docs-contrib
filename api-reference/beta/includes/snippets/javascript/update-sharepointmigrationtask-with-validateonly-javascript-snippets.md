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
    validateOnly: true,
    sourceUserIdentity: {
      userPrincipalName: 'source-user@contoso.onmicrosoft.com'
    },
    targetUserIdentity: {
      userPrincipalName: 'target-user@fabrico.onmicrosoft.com'
    }
  }
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks')
	.version('beta')
	.post(sharePointMigrationTask);

```