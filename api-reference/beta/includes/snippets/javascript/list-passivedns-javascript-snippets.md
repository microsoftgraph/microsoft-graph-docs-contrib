---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let passiveDns = await client.api('/security/threatIntelligence/hosts/contoso.com/passiveDns')
	.version('beta')
	.get();

```