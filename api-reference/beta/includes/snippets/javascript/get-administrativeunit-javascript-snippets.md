---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let administrativeUnit = await client.api('/administrativeUnits/4d7ea995-bc0f-45c0-8c3e-132e93bf95f8')
	.version('beta')
	.get();

```