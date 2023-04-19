---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalDomainName = {
    '@odata.type': 'microsoft.graph.externalDomainName',
    id: 'contososuites.com'
};

await client.api('/directory/federationConfigurations/d5a56845-6845-d5a5-4568-a5d54568a5d5/microsoft.graph.samlOrWsFedExternalDomainFederation/domains')
	.version('beta')
	.post(externalDomainName);

```