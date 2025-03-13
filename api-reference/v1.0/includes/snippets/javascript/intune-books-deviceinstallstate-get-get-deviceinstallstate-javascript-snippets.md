---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceInstallState = await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/deviceStates/{deviceInstallStateId}')
	.get();

```