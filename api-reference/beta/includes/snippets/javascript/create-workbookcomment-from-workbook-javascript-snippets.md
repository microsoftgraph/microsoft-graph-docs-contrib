---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookComment = {
  cellAddress: 'Sheet1!A1',
  content: 'This is my comment.',
  contentType: 'plain'
};

await client.api('/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments')
	.version('beta')
	.post(workbookComment);

```