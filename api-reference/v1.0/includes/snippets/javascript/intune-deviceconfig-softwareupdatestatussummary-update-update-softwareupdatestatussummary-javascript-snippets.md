---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const softwareUpdateStatusSummary = {
  '@odata.type': '#microsoft.graph.softwareUpdateStatusSummary',
  displayName: 'Display Name value',
  compliantDeviceCount: 4,
  nonCompliantDeviceCount: 7,
  remediatedDeviceCount: 5,
  errorDeviceCount: 0,
  unknownDeviceCount: 2,
  conflictDeviceCount: 3,
  notApplicableDeviceCount: 8,
  compliantUserCount: 2,
  nonCompliantUserCount: 5,
  remediatedUserCount: 3,
  errorUserCount: 14,
  unknownUserCount: 0,
  conflictUserCount: 1,
  notApplicableUserCount: 6
};

await client.api('/deviceManagement/softwareUpdateStatusSummary')
	.update(softwareUpdateStatusSummary);

```