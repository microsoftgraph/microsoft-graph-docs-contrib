---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let passiveDnsReverse = await client.api('/security/threatIntelligence/hosts/contoso.com/passiveDnsReverse')
	.version('beta')
	.get();

```