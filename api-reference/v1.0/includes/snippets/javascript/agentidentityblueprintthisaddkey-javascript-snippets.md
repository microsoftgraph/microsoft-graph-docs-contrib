---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const keyCredential = {
  keyCredential: {
    '@odata.type': 'microsoft.graph.keyCredential'
  },
  passwordCredential: {
    '@odata.type': 'microsoft.graph.passwordCredential'
  },
  proof: 'String'
};

await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint/addKey')
	.post(keyCredential);

```