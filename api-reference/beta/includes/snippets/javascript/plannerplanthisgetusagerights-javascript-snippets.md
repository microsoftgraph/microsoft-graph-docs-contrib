---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let planUsageRight = await client.api('/planner/plans/xqQg5FS2LkCp935s-FIFm2QAFkHM/getUsageRights')
	.version('beta')
	.get();

```