---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attachments = await client.api('/admin/serviceAnnouncement/messages/MC54091/attachments')
	.version('beta')
	.get();

```