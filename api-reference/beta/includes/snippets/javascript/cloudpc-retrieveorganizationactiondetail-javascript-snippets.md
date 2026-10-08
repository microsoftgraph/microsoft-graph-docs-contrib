---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudPcOrganizationActionDetail = await client.api('/deviceManagement/virtualEndpoint/retrieveOrganizationActionDetail(actionType='activate')')
	.version('beta')
	.get();

```