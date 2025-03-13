---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subdomains = await client.api('/security/threatIntelligence/hosts/contoso.com/subdomains')
	.version('beta')
	.get();

```