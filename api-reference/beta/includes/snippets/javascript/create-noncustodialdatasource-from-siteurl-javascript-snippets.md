---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const noncustodialDataSource = {
    applyHoldToSource: false,
    dataSource: {
        '@odata.type': 'microsoft.graph.ediscovery.siteSource',
        site: {
            webUrl: 'https://contoso.sharepoint.com/sites/SecretSite'
        }
    }
};

await client.api('/compliance/ediscovery/cases/15d80234-8320-4f10-96d0-d98d53ffdfc9/noncustodialdatasources')
	.version('beta')
	.post(noncustodialDataSource);

```