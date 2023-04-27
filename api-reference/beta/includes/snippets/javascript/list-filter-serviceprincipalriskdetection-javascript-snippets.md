---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipalRiskDetections = await client.api('/identityProtection/servicePrincipalRiskDetections')
	.version('beta')
	.filter('riskEventType eq \'investigationsThreatIntelligence\' or riskLevel eq \'medium\'')
	.get();

```