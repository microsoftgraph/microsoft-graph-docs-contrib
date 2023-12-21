---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const settingStateDeviceSummary = {
  '@odata.type': '#microsoft.graph.settingStateDeviceSummary',
  settingName: 'Setting Name value',
  instancePath: 'Instance Path value',
  unknownDeviceCount: 2,
  notApplicableDeviceCount: 8,
  compliantDeviceCount: 4,
  remediatedDeviceCount: 5,
  nonCompliantDeviceCount: 7,
  errorDeviceCount: 0,
  conflictDeviceCount: 3
};

await client.api('/deviceManagement/deviceConfigurations/{deviceConfigurationId}/deviceSettingStateSummaries')
	.post(settingStateDeviceSummary);

```