---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.editionUpgradeConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  licenseType: 'licenseFile',
  targetEdition: 'windows10EnterpriseN',
  license: 'License value',
  productKey: 'Product Key value'
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```