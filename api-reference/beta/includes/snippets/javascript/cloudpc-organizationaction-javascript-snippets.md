---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const cloudPcOrganizationActionDetail = {
  actionType: 'activate'
};

await client.api('/deviceManagement/virtualEndpoint/organizationAction')
	.version('beta')
	.post(cloudPcOrganizationActionDetail);

```