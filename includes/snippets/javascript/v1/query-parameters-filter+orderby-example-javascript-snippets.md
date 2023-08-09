---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messages = await client.api('/me/messages')
	.filter('Subject eq \'welcome\' and importance eq \'normal\'')
	.orderby('subject,importance,receivedDateTime desc')
	.get();

```