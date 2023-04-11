---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let components = await client.api('/security/threatIntelligence/hosts/contoso.com/components')
	.version('beta')
	.get();

```