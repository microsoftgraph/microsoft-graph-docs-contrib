---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let members = await client.api('/chats/19:9ef2dcdf14ba44cbae25c2f5d53171ba@thread.v2/members')
	.get();

```