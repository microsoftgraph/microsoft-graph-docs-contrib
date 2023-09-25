---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onPremisesDirectorySynchronization = {
  configuration: {
    accidentalDeletionPrevention: {
      synchronizationPreventionType: 'enabledForCount',
      alertThreshold: 500
    }
  },
  features: {
    groupWriteBackEnabled: true
  }
};

await client.api('/directory/onPremisesSynchronization/{id}')
	.version('beta')
	.update(onPremisesDirectorySynchronization);

```