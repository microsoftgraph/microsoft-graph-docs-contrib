---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const deleteUserFromSharedAppleDevice = {
  userPrincipalName: 'User Principal Name value'
};

await client.api('/deviceManagement/managedDevices/{managedDeviceId}/deleteUserFromSharedAppleDevice')
	.post(deleteUserFromSharedAppleDevice);

```