---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationTemplates = await client.api('/applicationTemplates')
	.select('id,displayName,riskScore,riskFactors')
	.get();

```