---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sharePointMigrationTask = await client.api('/solutions/sharePoint/migrations/crossOrganizationMigrationTasks/getBySourceSiteUrl(sourceSiteUrl='https://contoso.sharepoint.com/sites/IT')')
	.version('beta')
	.get();

```