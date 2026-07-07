---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let analyzedEmails = await client.api('/security/collaboration/analyzedEmails?startTime=2024-02-18&endTime=2024-02-20')
	.get();

```