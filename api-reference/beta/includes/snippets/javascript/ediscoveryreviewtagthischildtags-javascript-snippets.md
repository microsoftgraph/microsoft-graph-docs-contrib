---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let childTags = await client.api('/security/cases/ediscoveryCases/b6f72954-c7d0-414c-ad50-00167216cb03/tags/318f79767abf4b8fab4d8e37b3174c5a/childTags')
	.version('beta')
	.get();

```