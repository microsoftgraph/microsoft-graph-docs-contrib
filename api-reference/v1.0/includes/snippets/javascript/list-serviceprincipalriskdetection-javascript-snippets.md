---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipalRiskDetections = await client.api('/identityProtection/servicePrincipalRiskDetections')
	.get();

```