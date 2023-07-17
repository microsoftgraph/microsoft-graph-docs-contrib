---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recommendation = {
  dismissReason: 'Recommendations is not relevant for my organization because...'
};

await client.api('/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/dismiss')
	.version('beta')
	.post(recommendation);

```