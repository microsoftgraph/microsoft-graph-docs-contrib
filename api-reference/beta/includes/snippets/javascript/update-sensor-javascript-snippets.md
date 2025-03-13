---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sensor = {
  settings: {
    description: 'dc1 settings new description',
    domainControllerDnsNames: [
        'DC1.domain1.test.local'
    ],
    isDelayedDeploymentEnabled: false
  }
};

await client.api('/security/identities/sensors/d31dd827-92cd-4cd6-b269-c151a0eec55d')
	.version('beta')
	.update(sensor);

```