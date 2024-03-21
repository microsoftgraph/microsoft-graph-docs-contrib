---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messages = await client.api('/me/messages')
	.filter('subject eq \'let\'\'s meet for lunch?\'')
	.get();

```