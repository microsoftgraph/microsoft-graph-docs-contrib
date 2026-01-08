---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const site = {
  name: 'Communication Site Test',
  webUrl: 'https://contoso.sharepoint.com/sites/commsite1',
  locale: 'en-US',
  shareByEmailEnabled: false,
  description: 'Test Site Description',
  template: 'sitepagepublishing',
  ownerIdentityToResolve: {
    email: 'ryan@contoso.com'
  }
};

await client.api('/sites')
	.version('beta')
	.post(site);

```