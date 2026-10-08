---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachments = {
  '@odata.type': '#microsoft.graph.fileAttachment',
  name: 'screenshot.png',
  contentType: 'image/png',
  contentBytes: 'iVBORw0KGgoAAAANSUhEUgAAAAUA...',
  contentId: 'screenshot-001',
  isInline: true
};

await client.api('/me/notes/AAMkAGI2THVSAAA=/attachments')
	.version('beta')
	.post(attachments);

```