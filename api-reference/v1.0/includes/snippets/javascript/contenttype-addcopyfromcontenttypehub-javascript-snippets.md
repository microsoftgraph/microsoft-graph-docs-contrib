---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contentType = {
  contentTypeId: '0x0101'
};

await client.api('/sites/root/lists/Documents/contentTypes/addCopyFromContentTypeHub')
	.post(contentType);

```