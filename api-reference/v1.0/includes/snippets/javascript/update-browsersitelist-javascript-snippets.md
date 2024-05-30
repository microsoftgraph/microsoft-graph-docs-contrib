---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSiteList = {
    displayName: 'Production Site List A',
    description: 'Production site list for team A'
};

await client.api('/admin/edge/internetExplorerMode/siteLists/36ba61eb-c492-4283-a38b-963a1dbb2f69')
	.update(browserSiteList);

```