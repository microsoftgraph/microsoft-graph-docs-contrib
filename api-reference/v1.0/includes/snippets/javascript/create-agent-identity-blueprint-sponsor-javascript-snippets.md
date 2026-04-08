---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/{sponsor-object-id}'
};

await client.api('/applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors/$ref')
	.post(directoryObject);

```