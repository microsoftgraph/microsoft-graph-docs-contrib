---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let articleIndicator = await client.api('/security/threatIntelligence/articleIndicators/ZmFrZS1tYWxpY2lvdXMuc2l0ZQ==')
	.version('beta')
	.get();

```