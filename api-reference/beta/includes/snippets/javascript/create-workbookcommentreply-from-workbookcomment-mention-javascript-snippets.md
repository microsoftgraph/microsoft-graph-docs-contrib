---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workbookCommentReply = {
  richContent: '<at id=\"0\">Kate Kristensen</at> - Can you take a look?',
  mentions: [
    {
      id: 0,
      name: 'Kate Kristensen',
      email: 'kakri@contoso.com'
    }
  ],
  contentType: 'mention'
};

await client.api('/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments/97A21473-8339-4BF0-BCB6-F55E4909FFB8/replies')
	.version('beta')
	.post(workbookCommentReply);

```