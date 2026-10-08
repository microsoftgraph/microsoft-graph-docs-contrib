---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
    '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/1511d5e7-c324-4362-ad4b-16c20076e5aa'
};

await client.api('/servicePrincipals/{id}/microsoft.graph.agentIdentity/owners/$ref')
	.version('beta')
	.post(directoryObject);

```