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
    '@odata.type': '#microsoft.graph.entraRecoveryServices.recoveryJobEntityNameAndIdsFilter',
    filterValues: [
      {
        entityType: 'user',
        entityIds: [
          '52330fde-895a-4a99-ae59-1c35c2a263e9',
          '0c503c02-5554-4d59-9fcc-69736618fb8f'
        ]
      },
      {
        entityType: 'group',
        entityIds: [
          '04181a71-a18d-4eee-94da-a77e7eb6520b',
          '2c888900-a7e8-4a01-ada5-17c04b29e8ec'
        ]
      }
    ]
  }
};

await client.api('/directory/recovery/snapshots/MjAyNC0wOC0yNlQwMjozMDowMFo=/recoveryJobs')
	.version('beta')
	.post(recoveryJob);

```