---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const categoryTemplate = {
  '@odata.type': '#microsoft.graph.security.categoryTemplate',
  displayName: 'Accounts Payable',
};

await client.api('/security/labels/categories')
	.post(categoryTemplate);

```