---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.windowsPhone81CustomConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  omaSettings: [
    {
      '@odata.type': 'microsoft.graph.omaSetting',
      displayName: 'Display Name value',
      description: 'Description value',
      omaUri: 'Oma Uri value'
    }
  ]
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```