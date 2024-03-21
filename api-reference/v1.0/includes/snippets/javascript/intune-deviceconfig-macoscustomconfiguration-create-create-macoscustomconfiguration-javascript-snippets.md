---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.macOSCustomConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  payloadName: 'Payload Name value',
  payloadFileName: 'Payload File Name value',
  payload: 'cGF5bG9hZA=='
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```