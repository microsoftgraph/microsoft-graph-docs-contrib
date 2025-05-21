---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const qrCodePinAuthenticationMethod = {
  '@odata.type': '#microsoft.graph.qrCodePinAuthenticationMethod',
  standardQRCode: {
    expireDateTime: '2025-12-19T12:00:00Z',
    startDateTime: '2025-01-01T12:00:00Z'
  },
  pin: {
    code: '09599786'
  }
};

await client.api('/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod')
	.version('beta')
	.put(qrCodePinAuthenticationMethod);

```