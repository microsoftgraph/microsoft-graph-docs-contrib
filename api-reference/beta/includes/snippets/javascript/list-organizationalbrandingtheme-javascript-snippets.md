---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let themes = await client.api('/organization/aaaabbbb-0000-cccc-1111-dddd2222eeee/branding/themes')
	.version('beta')
	.get();

```