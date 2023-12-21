---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let hostReputation = await client.api('/security/threatIntelligence/hosts/fake-malicious.site/reputation')
	.version('beta')
	.get();

```