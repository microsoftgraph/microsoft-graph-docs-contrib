---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let participants_v2 = await client.api('/communications/callRecords/614e3ff0-4728-4394-8c03-52fb3b967fde/participants_v2')
	.version('beta')
	.get();

```