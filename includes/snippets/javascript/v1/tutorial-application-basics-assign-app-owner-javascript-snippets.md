---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
    '@odata.id': 'https://graph.microsoft.com/v1.0/directoryObjects/8afc02cb-4d62-4dba-b536-9f6d73e9be26'
};

await client.api('/applications/7b45cf6d-9083-4eb2-92c4-a7e090f1fc40/owners/$ref')
	.post(directoryObject);

```