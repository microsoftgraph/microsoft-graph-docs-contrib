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
        webUrl: 'https://contoso.sharepoint.com/sites/HumanResources'
    }
};

await client.api('/compliance/ediscovery/cases/15d80234-8320-4f10-96d0-d98d53ffdfc9/custodians/8904528fef4d4578b44f71a80188f400/siteSources')
	.version('beta')
	.post(siteSource);

```