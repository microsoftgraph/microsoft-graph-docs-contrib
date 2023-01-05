---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let assignmentRequests = await client.api('/identityGovernance/entitlementManagement/assignmentRequests')
	.get();

```