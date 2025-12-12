---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationTemplate = await client.api('/applicationTemplates/006a06ef-9160-42cd-88bf-17a7588fc844')
	.version('beta')
	.select('id,displayName,riskScore,riskFactors')
	.get();

```