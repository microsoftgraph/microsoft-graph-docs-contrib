---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let recommendations = await client.api('/directory/recommendations')
	.version('beta')
	.filter('id eq \'0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA\'')
	.expand('impactedResources')
	.get();

```