---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pageTemplate = await client.api('/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pageTemplates/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.pageTemplate')
	.version('beta')
	.expand('canvasLayout')
	.get();

```