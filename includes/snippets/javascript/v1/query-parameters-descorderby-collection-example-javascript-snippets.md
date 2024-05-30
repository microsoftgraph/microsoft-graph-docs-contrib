---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messages = await client.api('/me/mailFolders/Inbox/messages')
	.orderby('from/emailAddress/name desc,subject')
	.get();

```