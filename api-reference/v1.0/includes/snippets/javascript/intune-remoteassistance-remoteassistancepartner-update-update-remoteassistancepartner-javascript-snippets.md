---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const remoteAssistancePartner = {
  '@odata.type': '#microsoft.graph.remoteAssistancePartner',
  displayName: 'Display Name value',
  onboardingUrl: 'https://example.com/onboardingUrl/',
  onboardingStatus: 'onboarding',
  lastConnectionDateTime: '2016-12-31T23:58:36.6670033-08:00'
};

await client.api('/deviceManagement/remoteAssistancePartners/{remoteAssistancePartnerId}')
	.update(remoteAssistancePartner);

```