---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const federatedTokenValidationPolicy = {
  '@odata.type': '#microsoft.graph.federatedTokenValidationPolicy',
  deletedDateTime: 'String (timestamp)',
  validatingDomains: {
    '@odata.type': 'microsoft.graph.validatingDomains',
    rootDomains: 'enumerated',
    domainNames: ['contoso.com','fabrikam.com']
  }
};

await client.api('/policies/federatedTokenValidationPolicy')
	.version('beta')
	.put(federatedTokenValidationPolicy);

```