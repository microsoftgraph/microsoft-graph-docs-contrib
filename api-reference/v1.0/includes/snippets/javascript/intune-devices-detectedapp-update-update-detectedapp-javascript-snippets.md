---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const detectedApp = {
  '@odata.type': '#microsoft.graph.detectedApp',
  displayName: 'Display Name value',
  version: 'Version value',
  sizeInByte: 10,
  deviceCount: 11,
  publisher: 'Publisher value',
  platform: 'windows'
};

await client.api('/deviceManagement/detectedApps/{detectedAppId}')
	.update(detectedApp);

```