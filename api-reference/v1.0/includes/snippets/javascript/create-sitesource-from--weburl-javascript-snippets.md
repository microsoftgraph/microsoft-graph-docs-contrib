---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteSource = {
    site: {
        webUrl: 'https://m365x809305.sharepoint.com/sites/Retail'
    }
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/legalHolds/0053a61a3b6c42738f7606791716a22a/siteSources')
	.version('beta')
	.post(siteSource);

```