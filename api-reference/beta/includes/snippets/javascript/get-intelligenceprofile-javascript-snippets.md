---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let intelligenceProfile = await client.api('/security/threatIntelligence/intelProfiles/actinium')
	.version('beta')
	.get();

```