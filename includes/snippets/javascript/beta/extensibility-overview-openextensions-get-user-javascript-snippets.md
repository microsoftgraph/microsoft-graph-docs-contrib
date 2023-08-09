---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let extension = await client.api('/users/3fbd929d-8c56-4462-851e-0eb9a7b3a2a5/extensions/com.contoso.socialSettings')
	.get();

```