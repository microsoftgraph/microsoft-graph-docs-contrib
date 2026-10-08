---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const message = {
  IsMessageMoveRequested: 'true',
  ReportAction: 'junk'
};

await client.api('/me/messages/AAMkADhAAATs28OAAA=/reportMessage')
	.version('beta')
	.post(message);

```