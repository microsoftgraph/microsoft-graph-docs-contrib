---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let place = await client.api('/places/0be387a4-d53b-410f-9daf-f4fa07e5b05a')
	.version('beta')
	.get();

```