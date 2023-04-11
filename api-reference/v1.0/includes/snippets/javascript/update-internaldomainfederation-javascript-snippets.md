---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const internalDomainFederation = {
  displayName: 'Contoso name change',  
  federatedIdpMfaBehavior: 'acceptIfMfaDoneByFederatedIdp'
};

await client.api('/domains/contoso.com/federationConfiguration/6601d14b-d113-8f64-fda2-9b5ddda18ecc')
	.update(internalDomainFederation);

```