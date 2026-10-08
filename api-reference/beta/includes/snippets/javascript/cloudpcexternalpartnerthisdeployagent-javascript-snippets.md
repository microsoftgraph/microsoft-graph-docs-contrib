---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const string = {
  cloudPcIds: [
    '30d0e128-de93-41dc-89ec-33d84bb662a0', 
    '7c82a3e3-9459-44e4-94d9-b92f93bf78dd'
  ]
};

await client.api('/deviceManagement/virtualEndpoint/externalPartners/b3548526-e615-3785-3118-be70b3968ec5/deployAgent')
	.version('beta')
	.post(string);

```