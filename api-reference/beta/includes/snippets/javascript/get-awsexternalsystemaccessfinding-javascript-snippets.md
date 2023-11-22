---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsExternalSystemAccessFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxBd3NFeHRlcm5hbFN5c3RlbUFjY2Vzc0ZpbmRpbmcsMTg5NzE/microsoft.graph.awsExternalSystemAccessFinding')
	.version('beta')
	.get();

```