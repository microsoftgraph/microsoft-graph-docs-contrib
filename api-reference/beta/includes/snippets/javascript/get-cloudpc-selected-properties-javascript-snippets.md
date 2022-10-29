---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPC = await client.api('/deviceManagement/virtualEndpoint/cloudPCs/40cee9d2-03fb-4066-8d35-dbdf2875c33f')
	.version('beta')
	.select('id,displayName,imageDisplayName,lastModifiedDateTime,lastRemoteActionResult,lastLoginResult,connectivityResult')
	.get();

```