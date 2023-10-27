---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceConfigurationDeviceStateSummary = {
  '@odata.type': '#microsoft.graph.deviceConfigurationDeviceStateSummary',
  unknownDeviceCount: 2,
  notApplicableDeviceCount: 8,
  compliantDeviceCount: 4,
  remediatedDeviceCount: 5,
  nonCompliantDeviceCount: 7,
  errorDeviceCount: 0,
  conflictDeviceCount: 3
};

await client.api('/deviceManagement/deviceConfigurationDeviceStateSummaries')
	.update(deviceConfigurationDeviceStateSummary);

```