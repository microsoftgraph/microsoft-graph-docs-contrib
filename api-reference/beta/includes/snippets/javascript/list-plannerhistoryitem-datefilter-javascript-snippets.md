---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let historyItems = await client.api('/planner/plans/nETqF5FS2LkCp935s-FIFm2QAFkHM/historyItems')
	.version('beta')
	.filter('occurredDateTime gt 2025-11-01T00:00:00Z and occurredDateTime lt 2025-12-01T00:00:00Z')
	.get();

```