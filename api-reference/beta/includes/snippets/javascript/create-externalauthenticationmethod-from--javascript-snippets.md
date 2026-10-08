---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalAuthenticationMethod = {
  '@odata.type': '#microsoft.graph.externalAuthenticationMethod',
  configurationId: '26310fee-860b-4eab-8749-ab730dcf335e',
  displayName: 'Adatum'
};

await client.api('/users/{id}/authentication/externalAuthenticationMethods')
	.version('beta')
	.post(externalAuthenticationMethod);

```