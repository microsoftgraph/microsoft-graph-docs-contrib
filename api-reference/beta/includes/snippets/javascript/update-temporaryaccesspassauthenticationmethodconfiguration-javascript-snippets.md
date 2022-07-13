---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type':'#microsoft.graph.temporaryAccessPassAuthenticationMethodConfiguration',
  isUsableOnce: true
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/temporaryAccessPass')
	.version('beta')
	.update(authenticationMethodConfiguration);

```