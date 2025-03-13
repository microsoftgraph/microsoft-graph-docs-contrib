---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let secretInformationAccessAwsRoleFinding = await client.api('/identityGovernance/permissionsAnalytics/aws/findings/MSxTZWNyZXRJbmZvcm1hdGlvbkFjY2Vzc0F3c1JvbGVGaW5kaW5nLDQ4Mzcz/microsoft.graph.secretInformationAccessAwsRoleFinding')
	.version('beta')
	.get();

```