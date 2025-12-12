---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extension = {
  extensionName: 'myCustomExtension',
  myCustomString: 'Contoso data',
  myCustomBool: false
};

await client.api('/sites/8f52f9ad-4f4f-4739-b682-7c0283207937/extensions')
	.version('beta')
	.post(extension);

```