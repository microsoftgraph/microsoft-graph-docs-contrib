---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let urls = await client.api('/security/collaboration/analyzedEmails/{analyzedEmailId}/Urls')
	.version('beta')
	.get();

```