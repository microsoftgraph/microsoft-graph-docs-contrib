---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSharedCookie = {
    '@odata.type': '#microsoft.graph.browserSharedCookie',
    hostOrDomain: 'www.microsoft.com',
    sourceEnvironment: 'InternetExplorer11',
    displayName: 'Microsoft Cookie',
    hostOnly: true,
    comment: 'A cookie for microsoft.com',
    path: '/'
};

await client.api('/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573/sharedCookies')
	.post(browserSharedCookie);

```