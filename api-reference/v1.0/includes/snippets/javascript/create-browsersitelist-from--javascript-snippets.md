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

await client.api('/admin/edge/internetExplorerMode/siteLists')
	.post(browserSiteList);

```