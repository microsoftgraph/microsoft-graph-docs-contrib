---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSite = {
    '@odata.type': '#microsoft.graph.browserSite',
    webUrl: 'www.microsoft.com',
    targetEnvironment: 'InternetExplorer11',
    comment: 'A site that opens in InternetExplorer11',
    mergeType: 'default',
    compatibilityMode: 'default',
    allowRedirect: true
};

await client.api('/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573/sites')
	.post(browserSite);

```