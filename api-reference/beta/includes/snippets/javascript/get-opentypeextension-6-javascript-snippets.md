---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let driveItem = await client.api('/drive/items/01FWCEC553UUOHTOAGBVE2IXBQTIZY3JZQ')
	.version('beta')
	.expand('extensions($filter=id eq \'myCustomExtension\')')
	.get();

```