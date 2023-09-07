---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mobileAppAssignment = await client.api('/deviceAppManagement/mobileApps/{mobileAppId}/assignments/{mobileAppAssignmentId}')
	.get();

```