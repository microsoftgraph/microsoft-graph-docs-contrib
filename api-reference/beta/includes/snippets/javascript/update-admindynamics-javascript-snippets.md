---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const adminDynamics = {
  '@odata.type': '#microsoft.graph.adminDynamics',
  customerVoice: {
    '@odata.type': 'microsoft.graph.customerVoiceSettings',
    isRestrictedSurveyAccessEnabled: 'false',
    isRecordIdentityByDefaultEnabled: 'false',
    isInOrgFormsPhishingScanEnabled: 'false'
  }
};

await client.api('/admin/dynamics')
	.version('beta')
	.update(adminDynamics);

```