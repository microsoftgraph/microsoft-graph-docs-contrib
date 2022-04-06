---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentType = {
  contentType: 'https://graph.microsoft.com/v1.0/sites/{site-id}/contentTypes/0x0101'
};

await client.api('/sites/{site-id}/lists/{list-id}/contentTypes/addCopy')
	.post(contentType);

```