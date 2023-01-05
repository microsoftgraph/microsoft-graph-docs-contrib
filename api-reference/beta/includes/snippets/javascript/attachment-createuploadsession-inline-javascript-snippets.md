---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const uploadSession = {
  AttachmentItem: {
    attachmentType: 'file',
    name: 'scenary', 
    size: 7208534,
    isInline: true,
    contentId: 'my_inline_picture'
  }
};

await client.api('/me/messages/AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMA=/attachments/createUploadSession')
	.version('beta')
	.post(uploadSession);

```