---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const importedWindowsAutopilotDeviceIdentity = {
  '@odata.type': '#microsoft.graph.importedWindowsAutopilotDeviceIdentity',
  groupTag: 'Group Tag value',
  serialNumber: 'Serial Number value',
  productKey: 'Product Key value',
  importId: 'Import Id value',
  hardwareIdentifier: 'aGFyZHdhcmVJZGVudGlmaWVy',
  state: {
    '@odata.type': 'microsoft.graph.importedWindowsAutopilotDeviceIdentityState',
    deviceImportStatus: 'pending',
    deviceRegistrationId: 'Device Registration Id value',
    deviceErrorCode: 15,
    deviceErrorName: 'Device Error Name value'
  },
  assignedUserPrincipalName: 'Assigned User Principal Name value'
};

await client.api('/deviceManagement/importedWindowsAutopilotDeviceIdentities')
	.post(importedWindowsAutopilotDeviceIdentity);

```