---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignAndActivateBySerialNumber = {
  verificationCode: '588651',
  serialNumber: 'TOTP123456',
  displayName: 'Amy Masters Token'
};

await client.api('/me/authentication/hardwareOathMethods/assignAndActivateBySerialNumber')
	.version('beta')
	.post(assignAndActivateBySerialNumber);

```