---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const qrPin = {
  '@odata.type': '#microsoft.graph.qrPin',
  code: '09599786',
};

await client.api('/users/7c4999f7-9c25-4f8e-8b84-766eb28a1b49/authentication/qrCodePinMethod/pin')
	.version('beta')
	.update(qrPin);

```