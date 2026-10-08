---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recoveryPreviewJobs = await client.api('/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryPreviewJobs')
	.version('beta')
	.get();

```