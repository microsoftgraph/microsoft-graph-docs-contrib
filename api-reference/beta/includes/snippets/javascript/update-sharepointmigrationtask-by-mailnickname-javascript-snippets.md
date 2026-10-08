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
    '@odata.type': '#microsoft.graph.sharePointGroupMigrationTaskParameters',
    targetOrganizationHost: 'https://fabrico-my.sharepoint.com',
    sourceGroupIdentity: {
      mailNickname: 'source-group'
    },
    targetGroupIdentity: {
      mailNickname: 'target-group'
    }
  }
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks')
	.version('beta')
	.post(sharePointMigrationTask);

```