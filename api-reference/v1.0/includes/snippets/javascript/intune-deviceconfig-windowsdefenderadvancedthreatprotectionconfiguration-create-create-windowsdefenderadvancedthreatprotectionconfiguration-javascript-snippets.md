---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.windowsDefenderAdvancedThreatProtectionConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  allowSampleSharing: true,
  enableExpeditedTelemetryReporting: true
};

await client.api('/deviceManagement/deviceConfigurations')
	.post(deviceConfiguration);

```