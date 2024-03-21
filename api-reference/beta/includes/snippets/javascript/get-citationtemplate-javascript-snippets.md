---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let citationTemplate = await client.api('/security/labels/citations/{citationTemplateId}')
	.version('beta')
	.get();

```