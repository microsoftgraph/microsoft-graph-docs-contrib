---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSite = {
    webUrl: 'www.microsoft.com',
    targetEnvironment: 'microsoftEdge',
    mergeType: 'default',
    compatibilityMode: 'default',
    allowRedirect: false,
    comment: 'Updating to Edge.'
};

await client.api('/admin/edge/internetExplorerMode/siteLists/972a5778-df43-45fd-9c2a-5dd944c7a1ce/sites/7cf831d2-8a9b-4826-b120-911566f6fd6a')
	.update(browserSite);

```