---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllTargetedMessages = await client.api('/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllTargetedMessages')
	.version('beta')
	.filter('lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z')
	.get();

```