---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customAppScopes = await client.api('/roleManagement/exchange/customAppScopes')
	.version('beta')
	.get();

```