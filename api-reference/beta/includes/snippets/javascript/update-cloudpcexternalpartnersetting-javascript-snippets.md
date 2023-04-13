---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcExternalPartnerSetting = {
  '@odata.type': '#microsoft.graph.cloudPcExternalPartnerSetting',
  enableConnection: true
};

await client.api('/deviceManagement/virtualEndpoint/externalPartnerSettings/b3548526-e615-3785-3118-be70b3968ec5')
	.version('beta')
	.update(cloudPcExternalPartnerSetting);

```