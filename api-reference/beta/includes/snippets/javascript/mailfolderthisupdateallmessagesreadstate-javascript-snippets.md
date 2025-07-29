---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAllMessagesReadState = {
  isRead: 'true',
  suppressReadReceipts: 'true'
};

await client.api('/me/mailFolders/AAMkAGVmMDEzM/updateAllMessagesReadState')
	.version('beta')
	.post(updateAllMessagesReadState);

```