---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const zone = {
  displayName: 'Production Zone',
  description: 'Zone for production environments',
  environments: [
    {
      kind: 'awsAccount',
      id: '181994123251'
    },
    {
      kind: 'awsAccount',
      id: '326438728454'
    },
    {
      kind: 'azureSubscription',
      id: '/subscriptions/02687862-a843-4846-81f0-efe9ef244daa'
    },
    {
      kind: 'gcpProject',
      id: '69483221284'
    }
  ]
};

await client.api('/security/zones')
	.version('beta')
	.post(zone);

```