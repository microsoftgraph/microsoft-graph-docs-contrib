---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let groupSettingTemplates = await client.api('/groupSettingTemplates')
	.get();

```