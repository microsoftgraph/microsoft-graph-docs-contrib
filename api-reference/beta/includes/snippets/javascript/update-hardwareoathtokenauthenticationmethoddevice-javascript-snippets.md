---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hardwareOathTokenAuthenticationMethodDevice = {
  hashFunction: 'hmacsha256'
};

await client.api('/directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}')
	.version('beta')
	.update(hardwareOathTokenAuthenticationMethodDevice);

```