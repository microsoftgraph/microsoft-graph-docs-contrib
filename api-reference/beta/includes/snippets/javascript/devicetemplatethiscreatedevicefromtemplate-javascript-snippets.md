---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const device = {
  externalDeviceId: '2fa9424e-7ab0-4a22-8c90-2a20d15d8183',
  operatingSystemVersion: 'Ubuntu 18.04',
  externalSourceName: 'unknown',
  accountEnabled: false,
  alternativeNames: [
    '/subscriptions/00001111-aaaa-2222-bbbb-3333cccc4444/resourcegroups/testrg/providers/microsoft.deviceregistry/assets/asset1'
  ]
};

await client.api('/templates/deviceTemplates/2d62b12a-0163-457d-9796-9602e9807e1/createDeviceFromTemplate')
	.version('beta')
	.post(device);

```