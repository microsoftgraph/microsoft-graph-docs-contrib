---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  '@odata.id': 'https://graph.microsoft.com/beta/directoryObjects/{sponsorObjectId}'
};

await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentity/sponsors/$ref')
	.version('beta')
	.post(directoryObject);

```