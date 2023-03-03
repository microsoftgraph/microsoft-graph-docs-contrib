---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcOrganizationSettings = {
  '@odata.type': '#microsoft.graph.cloudPcOrganizationSettings',
  enableMEMAutoEnroll: true,
  osVersion: 'windows11',
  userAccountType: 'standardUser',
  windowsSettings: {
    language: 'en-US'
  }
};

await client.api('/deviceManagement/virtualEndpoint/organizationSettings')
	.version('beta')
	.update(cloudPcOrganizationSettings);

```