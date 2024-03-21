---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let administrativeUnit = await client.api('/administrativeUnits/2sd35b05-ae71-48ab-9e7d-4r41a28te37d')
	.version('beta')
	.get();

```