---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const addKey = {
  keyCredential: {
    '@odata.type': 'microsoft.graph.keyCredential'
  },
  passwordCredential: {
    '@odata.type': 'microsoft.graph.passwordCredential'
  },
  proof: 'String'
};

await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint/addKey')
	.version('beta')
	.post(addKey);

```