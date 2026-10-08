---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const configurationSnapshotJob = {
  displayName: 'Snapshot Demo',
  description: 'This is Snapshot Description',
  resources: [
    'microsoft.exchange.sharedmailbox',
    'microsoft.exchange.transportrule'
  ]
};

await client.api('/admin/configurationManagement/configurationSnapshots/createSnapshot')
	.version('beta')
	.post(configurationSnapshotJob);

```