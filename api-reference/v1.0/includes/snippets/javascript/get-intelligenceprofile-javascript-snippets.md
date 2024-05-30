---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let intelligenceProfile = await client.api('/security/threatIntelligence/intelProfiles/9b01de37bf66d1760954a16dc2b52fed2a7bd4e093dfc8a4905e108e4843da80')
	.get();

```