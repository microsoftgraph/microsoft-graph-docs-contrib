---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alert = await client.api('/security/alerts_v2/da637578995287051192_756343937')
	.version('beta')
	.get();

```