---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type': '#microsoft.graph.softwareOathAuthenticationMethodConfiguration',
  state: 'disabled'
};

await client.api('/policies/authenticationMethodsPolicy/authenticationMethodConfigurations/softwareOath')
	.update(authenticationMethodConfiguration);

```