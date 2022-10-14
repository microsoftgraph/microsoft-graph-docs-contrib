---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const documentSetVersion = {
  comment: 'v1',
  shouldCaptureMinorVersion: false
};

await client.api('/sites/root/lists/Documents/items/2/documentSetVersions')
	.post(documentSetVersion);

```