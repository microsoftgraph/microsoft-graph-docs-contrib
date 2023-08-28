---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const reportRoot = {
  '@odata.type': '#microsoft.graph.reportRoot'
};

await client.api('/reports')
	.update(reportRoot);

```