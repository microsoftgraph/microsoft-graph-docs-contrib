---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cookies = await client.api('/security/threatIntelligence/hosts/contoso.com/cookies')
	.version('beta')
	.get();

```