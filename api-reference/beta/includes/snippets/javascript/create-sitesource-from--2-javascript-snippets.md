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
        webUrl: 'https://contoso.sharepoint.com/sites/SecretSite'
    }
};

await client.api('/compliance/ediscovery/cases/c816dd6f-5af8-40c5-a760-331361e05c60/legalHolds/387566cc-38ae-4e85-ab4b-cd2dd34faa07/siteSources')
	.version('beta')
	.post(siteSource);

```