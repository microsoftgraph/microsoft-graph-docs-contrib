---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let group = await client.api('/termStore/groups/1FFD3F87-9464-488A-A0EC-8FB90911182C')
	.version('beta')
	.get();

```