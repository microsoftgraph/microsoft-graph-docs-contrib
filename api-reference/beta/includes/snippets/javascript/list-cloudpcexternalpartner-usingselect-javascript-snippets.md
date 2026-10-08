---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalPartners = await client.api('/deviceManagement/virtualEndpoint/externalPartners')
	.version('beta')
	.select('id,partnerId,enableConnection')
	.get();

```