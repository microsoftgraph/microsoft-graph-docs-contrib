---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let directorySettingTemplate = await client.api('/directorySettingTemplates/08d542b9-071f-4e16-94b0-74abb372e3d9')
	.version('beta')
	.get();

```