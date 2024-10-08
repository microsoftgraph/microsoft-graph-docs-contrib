---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let domain = await client.api('/domains/woodgrovedemo.com')
	.version('beta')
	.get();

```