---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfiguration = {
  '@odata.type': '#microsoft.graph.windows10SecureAssessmentConfiguration',
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  launchUri: 'Launch Uri value',
  configurationAccount: 'Configuration Account value',
  allowPrinting: true,
  allowScreenCapture: true,
  allowTextSuggestion: true
};

await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}')
	.update(deviceConfiguration);

```