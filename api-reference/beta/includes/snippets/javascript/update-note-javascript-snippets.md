---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const aAMkAGI2THVSAAA= = {
  subject: 'Updated Meeting Notes - Jan 28',
  body: {
    contentType: 'html',
    content: '<html><body><h2>Updated Standup</h2><ul><li>Task 1 completed</li><li>Task 2 in progress</li></ul></body></html>'
  }
};

await client.api('/me/notes/AAMkAGI2THVSAAA=')
	.version('beta')
	.update(aAMkAGI2THVSAAA=);

```