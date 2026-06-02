---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamworkSection = await client.api('/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/b2c3d4e5-f6a7-8901-bcde-f12345678901')
	.version('beta')
	.expand('items')
	.get();

```