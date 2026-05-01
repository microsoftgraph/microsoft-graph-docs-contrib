---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let attachments = await client.api('/me/notes/AAMkAGI2THVSAAA=/attachments')
	.version('beta')
	.get();

```