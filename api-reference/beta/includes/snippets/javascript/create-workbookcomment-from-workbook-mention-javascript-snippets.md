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
  richContent: '<at id=\"0\">Kate Kristensen</at> - This is my comment.',
  mentions: [
    {
      id: 0,
      name: 'Kate Kristensen',
      email: 'kakri@contoso.com'
    }
  ],
  contentType: 'mention'
};

await client.api('/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments')
	.version('beta')
	.post(workbookComment);

```