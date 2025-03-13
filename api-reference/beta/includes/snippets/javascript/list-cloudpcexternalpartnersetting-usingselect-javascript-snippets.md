---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let externalPartnerSettings = await client.api('/deviceManagement/virtualEndpoint/externalPartnerSettings')
	.version('beta')
	.select('id,partnerId,enableConnection')
	.get();

```