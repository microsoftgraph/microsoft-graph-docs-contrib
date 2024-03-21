---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.windows10EnterpriseModernAppManagementConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  uninstallBuiltInApps: true
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```