---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const impactedResource = {
  postponeUntilDateTime: '2023-03-01T09:40:39.0420371Z'
};

await client.api('/directory/recommendations/0cb31920-84b9-471f-a6fb-468c1a847088_Microsoft.Identity.IAM.Insights.ApplicationCredentialExpiry/impactedResources/dbd9935e-15b7-4800-9049-8d8704c23ad2/postpone')
	.version('beta')
	.post(impactedResource);

```