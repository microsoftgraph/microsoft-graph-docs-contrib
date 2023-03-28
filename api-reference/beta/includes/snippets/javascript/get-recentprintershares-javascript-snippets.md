---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recentPrinterShares = await client.api('/me/print/recentPrinterShares')
	.version('beta')
	.get();

```