---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const recommendation = {
  postponeUntilDateTime: '2023-02-01T02:53:00Z'
};

await client.api('/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.TurnOffPerUserMFA/postpone')
	.version('beta')
	.post(recommendation);

```