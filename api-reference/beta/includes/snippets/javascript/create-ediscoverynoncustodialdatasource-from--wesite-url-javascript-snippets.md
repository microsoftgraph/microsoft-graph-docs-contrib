---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const ediscoveryNoncustodialDataSource = {
    dataSource: {
        '@odata.type': 'microsoft.graph.security.siteSource',
        site: {
            webUrl: 'https://m365x809305.sharepoint.com/sites/Design-topsecret'
        }
    }
};

await client.api('/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/noncustodialDataSources')
	.version('beta')
	.post(ediscoveryNoncustodialDataSource);

```