---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const managedDeviceMobileAppConfiguration = {
  '@odata.type': '#microsoft.graph.iosMobileAppConfiguration',
  targetedMobileApps: [
    'Targeted Mobile Apps value'
  ],
  description: 'Description value',
  displayName: 'Display Name value',
  version: 7,
  encodedSettingXml: 'ZW5jb2RlZFNldHRpbmdYbWw=',
  settings: [
    {
      '@odata.type': 'microsoft.graph.appConfigurationSettingItem',
      appConfigKey: 'App Config Key value',
      appConfigKeyType: 'integerType',
      appConfigKeyValue: 'App Config Key Value value'
    }
  ]
};

await client.api('/deviceAppManagement/mobileAppConfigurations')
	.post(managedDeviceMobileAppConfiguration);

```