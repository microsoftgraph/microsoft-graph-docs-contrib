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
  partnerId: '198d7140-80bb-4843-8cc4-811377a49a92',
  enableConnection: true
};

await client.api('/deviceManagement/virtualEndpoint/externalPartnerSettings')
	.version('beta')
	.post(cloudPcExternalPartnerSetting);

```