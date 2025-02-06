---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const workforceIntegration = {
  displayName: 'ABCWorkforceIntegration',
  apiVersion: 1,
  isActive: true,
  encryption: {
    protocol: 'sharedSecret',
    secret: 'My Secret'
  },
  url: 'https://ABCWorkforceIntegration.com/Contoso/',
  supportedEntities: 'Shift,SwapRequest',
  eligibilityFilteringEnabledEntities: 'SwapRequest'
};

await client.api('/teamwork/workforceIntegrations')
	.post(workforceIntegration);

```