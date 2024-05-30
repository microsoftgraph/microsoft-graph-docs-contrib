---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let intelProfiles = await client.api('/security/threatIntelligence/intelProfiles')
	.version('beta')
	.get();

```