---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id': 'https://graph.microsoft.com/beta/directoryObjects/{sponsor-object-id}'
};

await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal/sponsors/$ref')
	.version('beta')
	.post(directoryObject);

```