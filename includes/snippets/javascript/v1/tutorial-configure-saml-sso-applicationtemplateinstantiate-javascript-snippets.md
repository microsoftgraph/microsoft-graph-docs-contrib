---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applicationServicePrincipal = {
  displayName: 'AWS Contoso'
};

await client.api('/applicationTemplates/21ed01d2-ec13-4e9e-86c1-cd546719ebc4/instantiate')
	.post(applicationServicePrincipal);

```