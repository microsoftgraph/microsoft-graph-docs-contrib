---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let dailyPrintUsageByPrinter = await client.api('/reports/dailyPrintUsageByPrinter')
	.version('beta')
	.get();

```