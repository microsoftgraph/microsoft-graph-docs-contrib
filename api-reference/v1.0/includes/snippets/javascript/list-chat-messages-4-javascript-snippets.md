---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messages = await client.api('/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages')
	.filter('lastModifiedDateTime gt 2022-09-22T00:00:00.000Z and lastModifiedDateTime lt 2022-09-24T00:00:00.000Z')
	.orderby('lastModifiedDateTime desc')
	.top(2)
	.get();

```