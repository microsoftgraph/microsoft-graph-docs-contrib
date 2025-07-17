---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hardwareOathTokenAuthenticationMethodDevice = await client.api('/directory/authenticationMethodDevices/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}')
	.version('beta')
	.get();

```