---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
  preferredSingleSignOnMode: 'saml'
};

await client.api('/servicePrincipals/d3616293-fff8-4415-9f01-33b05dad1b46')
	.update(servicePrincipal);

```