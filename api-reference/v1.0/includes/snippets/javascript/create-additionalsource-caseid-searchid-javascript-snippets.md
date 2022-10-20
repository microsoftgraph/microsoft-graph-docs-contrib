---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const dataSource = {
    '@odata.type': 'microsoft.graph.security.siteSource',
    site: {
        webUrl: 'https://contoso.sharepoint.com/sites/SecretSite'
    }
};

await client.api('/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources')
	.post(dataSource);

```