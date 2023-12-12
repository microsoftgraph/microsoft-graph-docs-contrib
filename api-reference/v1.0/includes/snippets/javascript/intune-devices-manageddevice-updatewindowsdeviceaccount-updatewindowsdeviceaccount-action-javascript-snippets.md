---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateWindowsDeviceAccount = Content-type: application/json
Content-length: 532

{
  updateWindowsDeviceAccountActionParameter: {
    '@odata.type': 'microsoft.graph.updateWindowsDeviceAccountActionParameter',
    deviceAccount: {
      '@odata.type': 'microsoft.graph.windowsDeviceAccount',
      password: 'Password value'
    },
    passwordRotationEnabled: true,
    calendarSyncEnabled: true,
    deviceAccountEmail: 'Device Account Email value',
    exchangeServer: 'Exchange Server value',
    sessionInitiationProtocalAddress: 'Session Initiation Protocal Address value'
  }
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/updateWindowsDeviceAccount')
	.post(updateWindowsDeviceAccount);

```