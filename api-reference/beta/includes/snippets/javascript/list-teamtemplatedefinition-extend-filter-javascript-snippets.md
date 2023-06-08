---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamTemplates = await client.api('/teamwork/teamTemplates?$expand=definitions&filter=definitions/any(a:a/languageTag eq \'en-US\')')
	.version('beta')
	.filter('definitions/any(a:a/languageTag eq \'en-US\')')
	.expand('definitions')
	.get();

```