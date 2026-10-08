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
      id: 'da157a29-f793-4dd6-9c73-41d2c73c2546'
    },
    targetUserIdentity: {
      id: 'cb53ea98-6151-44cc-9c21-098a3c3e3988'
    }
  }
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks')
	.version('beta')
	.post(sharePointMigrationTask);

```