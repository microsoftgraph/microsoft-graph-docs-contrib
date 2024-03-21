---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let parentHostPairs = await client.api('/security/threatIntelligence/hosts/contoso.com/parentHostPairs')
	.version('beta')
	.get();

```