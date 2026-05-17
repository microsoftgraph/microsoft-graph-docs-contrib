---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemRetentionLabel = {
  name: 'Retention label for Contracts'
};

await client.api('/drives/b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7/items/01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK/retentionLabel')
	.version('beta')
	.update(itemRetentionLabel);

```