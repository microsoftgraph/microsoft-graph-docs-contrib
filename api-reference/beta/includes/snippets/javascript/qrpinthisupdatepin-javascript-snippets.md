---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updatePin = {
  currentPin: '09599786',
  newPin: '56745755'
};

await client.api('/me/authentication/qrCodePinMethod/pin/updatePin')
	.version('beta')
	.update(updatePin);

```