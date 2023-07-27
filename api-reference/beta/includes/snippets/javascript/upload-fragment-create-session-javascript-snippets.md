---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const createUploadSession = {
  item: {
    '@microsoft.graph.conflictBehavior': 'rename',
    name: 'largefile.dat'
  }
};

await client.api('/me/drive/items/{itemID}:/{item-path}:/createUploadSession')
	.version('beta')
	.post(createUploadSession);

```