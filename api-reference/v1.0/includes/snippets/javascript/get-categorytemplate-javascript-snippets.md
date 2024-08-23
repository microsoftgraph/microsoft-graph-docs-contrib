---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let categoryTemplate = await client.api('/security/labels/categories/e2c79762-34a9-75ba-b6f0-a7c9a57978ef')
	.get();

```