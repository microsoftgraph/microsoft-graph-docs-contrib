---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let overprovisionedServerlessFunctionFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxPdmVycHJvdmlzaW9uZWRTZXJ2ZXJsZXNzRnVuY3Rpb25GaW5kaW5nLDQ3MDQ/microsoft.graph.overprovisionedServerlessFunctionFinding')
	.version('beta')
	.get();

```