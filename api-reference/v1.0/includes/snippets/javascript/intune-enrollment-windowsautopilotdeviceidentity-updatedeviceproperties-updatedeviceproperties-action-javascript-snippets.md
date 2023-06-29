---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateDeviceProperties = Content-type: application/json
Content-length: 187

{
  userPrincipalName: 'User Principal Name value',
  addressableUserName: 'Addressable User Name value',
  groupTag: 'Group Tag value',
  displayName: 'Display Name value'
};

await client.api('/deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentityId}/updateDeviceProperties')
	.post(updateDeviceProperties);

```