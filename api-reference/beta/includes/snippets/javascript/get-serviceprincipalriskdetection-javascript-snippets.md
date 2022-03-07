---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipalRiskDetection = await client.api('/identityProtection/servicePrincipalRiskDetections/{servicePrincipalRiskDetectionId}')
	.version('beta')
	.get();

```