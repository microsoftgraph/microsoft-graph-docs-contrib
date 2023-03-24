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
        webUrl: 'https://m365x809305.sharepoint.com/sites/Design-topsecret'
    }
};

await client.api('/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/additionalSources')
	.version('beta')
	.post(dataSource);

```