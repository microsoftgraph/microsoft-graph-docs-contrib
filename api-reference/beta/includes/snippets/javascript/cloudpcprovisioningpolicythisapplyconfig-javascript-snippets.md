---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const applyConfig = {
  cloudPcIds: [
    '52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4',
    'ff117b6c-e3e6-41be-9cae-eb6743249a30'
  ],
  policySettings: 'region'
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/applyConfig')
	.version('beta')
	.post(applyConfig);

```