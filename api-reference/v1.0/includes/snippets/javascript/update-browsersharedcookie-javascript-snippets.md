---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const browserSharedCookie = {
  hostOrDomain: 'www.microsoft.com',
  sourceEnvironment: 'microsoftEdge',
  displayName: 'Microsoft Cookie',
  path: '/',
  hostOnly: true,
  comment: 'Updating source environment.'
};

await client.api('/admin/edge/internetExplorerMode/siteLists/20579923-e6c8-425a-b728-47f43c10bc05/sharedCookies/972a5778-df43-45fd-9c2a-5dd944c7a1ce')
	.update(browserSharedCookie);

```