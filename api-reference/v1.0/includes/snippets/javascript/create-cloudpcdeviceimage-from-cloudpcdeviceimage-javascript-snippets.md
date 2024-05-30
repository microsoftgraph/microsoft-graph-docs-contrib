---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcDeviceImage = {
  displayName: 'ImageForDev',
  version: '0.0.1',
  sourceImageResourceId: '/subscriptions/0ac520ee-14c0-480f-b6c9-0a90c58ffff/resourceGroups/Example/providers/Microsoft.Compute/images/exampleImage'
};

await client.api('/deviceManagement/virtualEndpoint/deviceImages')
	.post(cloudPcDeviceImage);

```