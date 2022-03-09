---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const rename = {
  displayName: 'Cloud PC-HR'
};

await client.api('/deviceManagement/virtualEndpoint/cloudPCs/c2bbb5dd-2574-451b-a508-bbaa6ac48ace/rename')
	.version('beta')
	.post(rename);

```