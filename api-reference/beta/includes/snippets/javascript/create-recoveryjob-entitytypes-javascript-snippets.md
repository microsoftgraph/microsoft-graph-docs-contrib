---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recoveryJob = {
  filteringCriteria: {
    '@odata.type': '#microsoft.graph.entraRecoveryServices.recoveryJobEntityNamesFilter',
    entityTypes: [
      'user'
    ]
  }
};

await client.api('/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs')
	.version('beta')
	.post(recoveryJob);

```