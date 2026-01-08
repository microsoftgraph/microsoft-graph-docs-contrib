---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationMethodConfiguration = {
  '@odata.type': '#microsoft.graph.qrCodePinAuthenticationMethodConfiguration',
  state: 'enabled',
  standardQRCodeLifetimeInDays: 365,
  pinLength: 8
};

await client.api('/policies/authenticationmethodspolicy/authenticationmethodconfigurations/qrcodepin')
	.version('beta')
	.update(authenticationMethodConfiguration);

```