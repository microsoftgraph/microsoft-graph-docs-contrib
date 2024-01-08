---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let managedAppPolicyDeploymentSummary = await client.api('/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/deploymentSummary')
	.get();

```