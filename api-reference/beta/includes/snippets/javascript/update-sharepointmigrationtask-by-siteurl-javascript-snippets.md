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
    '@odata.type': '#microsoft.graph.sharePointSiteMigrationTaskParameters',
    targetOrganizationHost: 'https://fabrico-my.sharepoint.com',
    sourceSiteUrl: 'https://contoso.sharepoint.com/sites/IT',
    targetSiteUrl: 'https://fabrico.sharepoint.com/sites/IT'
  }
};

await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks')
	.version('beta')
	.post(sharePointMigrationTask);

```