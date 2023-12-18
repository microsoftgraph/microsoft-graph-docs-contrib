---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deviceInstallState = {
  '@odata.type': '#microsoft.graph.deviceInstallState',
  deviceName: 'Device Name value',
  deviceId: 'Device Id value',
  lastSyncDateTime: '2017-01-01T00:02:49.3205976-08:00',
  installState: 'installed',
  errorCode: 'Error Code value',
  osVersion: 'Os Version value',
  osDescription: 'Os Description value',
  userName: 'User Name value'
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/deviceStates/{deviceInstallStateId}')
	.update(deviceInstallState);

```