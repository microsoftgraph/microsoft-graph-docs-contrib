---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let host = await client.api('/security/threatIntelligence/hosts/contoso.com')
	.version('beta')
	.get();

```