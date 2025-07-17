---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const qrCode = {
  '@odata.type': '#microsoft.graph.qrCode',
  expireDateTime: '2025-12-01T12:00:00Z',
};

await client.api('/me/authentication/qrCodePinMethod/standardQRCode')
	.version('beta')
	.update(qrCode);

```