---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcExternalPartnerSetting = await client.api('/deviceManagement/virtualEndpoint/externalPartnerSettings/b3548526-e615-3785-3118-be70b3968ec5')
	.version('beta')
	.get();

```