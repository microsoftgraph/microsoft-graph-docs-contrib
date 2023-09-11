---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onlineMeetings = await client.api('/me/onlineMeetings')
	.version('beta')
	.filter('joinMeetingIdSettings/joinMeetingId eq \'1234567890\'')
	.get();

```