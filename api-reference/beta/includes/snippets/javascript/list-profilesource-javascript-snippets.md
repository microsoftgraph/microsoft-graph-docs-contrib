---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let profileSources = await client.api('/admin/people/profileSources')
	.version('beta')
	.get();

```