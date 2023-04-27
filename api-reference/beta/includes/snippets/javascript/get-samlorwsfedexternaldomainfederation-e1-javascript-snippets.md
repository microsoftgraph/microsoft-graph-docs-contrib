---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let samlOrWsFedExternalDomainFederation = await client.api('/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation')
	.version('beta')
	.filter('domains/any(x: x/id eq \'contoso.com\')')
	.get();

```