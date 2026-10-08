---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recoveryPreviewJob = {
  filteringCriteria: {
    '@odata.type': '#microsoft.graph.entraRecoveryServices.recoveryJobEntityNamesFilter',
    entityTypes: [
      'user'
    ]
  }
};

await client.api('/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryPreviewJobs')
	.version('beta')
	.post(recoveryPreviewJob);

```