---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let workbookCommentReply = await client.api('/me/drive/items/{id}/workbook/comments/{id}/replies/{id}')
	.get();

```