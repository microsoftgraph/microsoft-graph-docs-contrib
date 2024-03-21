---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let intelligenceProfileIndicator = await client.api('/security/threatIntelligence/intelligenceProfileIndicators/ff3eecd2-a2be-27c2-8dc0-40d1c0eada55')
	.version('beta')
	.get();

```