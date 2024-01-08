---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directoryObject = {
  userId: '55ac777c-109e-4022-b58c-470c8fcb6892',
  type: 'Group'
};

await client.api('/directory/deletedItems/getUserOwnedObjects')
	.version('beta')
	.post(directoryObject);

```