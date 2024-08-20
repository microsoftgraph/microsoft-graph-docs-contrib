---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const documentProcessingJob = {
  '@odata.type': '#microsoft.graph.documentProcessingJob',
  jobType: 'File',
  listItemUniqueId: '5955b119-99c1-4af9-97ed-3449e02de6f1',
};

await client.api('/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/documentProcessingJobs')
	.version('beta')
	.post(documentProcessingJob);

```