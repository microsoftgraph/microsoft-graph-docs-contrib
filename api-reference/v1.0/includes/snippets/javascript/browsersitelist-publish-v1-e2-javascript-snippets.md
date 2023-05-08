---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSiteList = {
    revision: '1.0',
    sites: [
        {
            id: '53e5f971-fc7b-4cd3-a1bf-34d7c0416882'
        },
        {
            id: '2e27cc86-3662-447e-b751-274fb9f869ea'
        }
    ],
    sharedCookies: [
        {
            id: '7f639835-23ab-4793-b1e6-1a06fad127a2'
        }
    ]
};

await client.api('/admin/edge/internetExplorerMode/siteLists/36ba61eb-c492-4283-a38b-963a1dbb2f69/publish')
	.post(browserSiteList);

```