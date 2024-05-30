---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let history = await client.api('/security/threatIntelligence/hosts/contoso.com/whois/history')
	.version('beta')
	.get();

```