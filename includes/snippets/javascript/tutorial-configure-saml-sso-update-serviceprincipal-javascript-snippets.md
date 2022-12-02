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

await client.api('/servicePrincipals/a750f6cf-2319-464a-bcc3-456926736a91')
	.update(servicePrincipal);

```