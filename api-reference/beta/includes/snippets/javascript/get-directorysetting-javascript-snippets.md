---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directorySetting = await client.api('/settings/f0b2d6f5-097d-4177-91af-a24e530b53cc')
	.version('beta')
	.get();

```