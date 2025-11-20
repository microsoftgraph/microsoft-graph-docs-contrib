---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationTemplates = await client.api('/applicationTemplates/')
	.version('beta')
	.filter('categories/any(c: c eq \'contentSharing\')')
	.select('id,displayName,riskScore,categories')
	.orderby('riskScore/total desc')
	.top(2)
	.get();

```