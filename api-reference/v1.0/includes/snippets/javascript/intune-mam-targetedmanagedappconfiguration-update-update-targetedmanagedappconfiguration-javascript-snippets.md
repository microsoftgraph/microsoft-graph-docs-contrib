---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const targetedManagedAppConfiguration = {
  '@odata.type': '#microsoft.graph.targetedManagedAppConfiguration',
  displayName: 'Display Name value',
  description: 'Description value',
  version: 'Version value',
  customSettings: [
    {
      '@odata.type': 'microsoft.graph.keyValuePair',
      name: 'Name value',
      value: 'Value value'
    }
  ],
  deployedAppCount: 0,
  isAssigned: true
};

await client.api('/deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}')
	.update(targetedManagedAppConfiguration);

```