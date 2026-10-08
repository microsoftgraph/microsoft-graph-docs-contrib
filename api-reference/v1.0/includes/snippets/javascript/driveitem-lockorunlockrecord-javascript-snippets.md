---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const itemRetentionLabel = {
  retentionSettings: {
    isRecordLocked: true
  }
};

await client.api('/drives/b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7/items/01NKDM7HMOJTVYMDOSXFDK2QJDXCDI3WUK/retentionLabel')
	.update(itemRetentionLabel);

```