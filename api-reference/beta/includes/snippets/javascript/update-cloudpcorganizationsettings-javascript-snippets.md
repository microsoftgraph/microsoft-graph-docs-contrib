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
  userAccountType: 'standardUser',
  osVersion: 'windows11'
};

await client.api('/deviceManagement/virtualEndpoint/organizationSettings')
	.version('beta')
	.update(cloudPcOrganizationSettings);

```