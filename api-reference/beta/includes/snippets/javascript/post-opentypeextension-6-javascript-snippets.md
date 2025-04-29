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

await client.api('/drive/items/01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ/extensions')
	.version('beta')
	.post(extension);

```