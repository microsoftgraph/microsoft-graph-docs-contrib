---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let customAppScope = await client.api('/roleManagement/exchange/customAppScopes/a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd')
	.version('beta')
	.get();

```