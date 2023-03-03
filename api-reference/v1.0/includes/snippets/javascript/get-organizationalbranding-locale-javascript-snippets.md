---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let organizationalBranding = await client.api('/organization/dcd219dd-bc68-4b9b-bf0b-4a33a796be35/branding')
	.header('Accept-Language','fr-FR')
	.get();

```