---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hostCookie = await client.api('/security/threatIntelligence/hostCookies/c2VjdXJlbWFpbC5jb250b3NvLmNvbSQkT0lEQyQkc2VjdXJlbWFpbC5jb250b3NvLmNvbQ==')
	.version('beta')
	.get();

```