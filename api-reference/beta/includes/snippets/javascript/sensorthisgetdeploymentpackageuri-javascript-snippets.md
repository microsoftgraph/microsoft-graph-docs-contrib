---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensorDeploymentPackage = await client.api('/security/identities/sensors/getDeploymentPackageUri')
	.version('beta')
	.get();

```