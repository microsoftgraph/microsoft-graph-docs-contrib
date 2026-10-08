---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recoveryJob = await client.api('/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs/3f4a6b60-7c1e-4e7c-9c7b-13f8d44b20c4')
	.version('beta')
	.get();

```