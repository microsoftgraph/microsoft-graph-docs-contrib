---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignUserToDevice = Content-type: application/json
Content-length: 113

{
  userPrincipalName: 'User Principal Name value',
  addressableUserName: 'Addressable User Name value'
};

await client.api('/deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}/assignUserToDevice')
	.post(assignUserToDevice);

```