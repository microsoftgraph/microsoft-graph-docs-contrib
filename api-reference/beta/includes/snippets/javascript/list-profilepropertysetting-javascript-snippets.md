---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profilePropertySettings = await client.api('/admin/people/profilePropertySettings')
	.version('beta')
	.get();

```