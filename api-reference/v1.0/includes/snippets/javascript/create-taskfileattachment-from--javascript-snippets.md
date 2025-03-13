---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const attachmentBase = {
  '@odata.type': '#microsoft.graph.taskFileAttachment',
  name: 'smile',
  contentBytes: 'a0b1c76de9f7=',
  contentType: 'image/gif'
};

await client.api('/me/todo/lists/AAMkpsDRVK=/tasks/AAKdfjhgsjhgJ=/attachments')
	.post(attachmentBase);

```