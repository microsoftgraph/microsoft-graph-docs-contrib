---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extension = {
    theme: 'light',
    color: 'yellow',
    lang: 'Swahili'
};

await client.api('/me/extensions/com.contoso.roamingSettings')
	.update(extension);

```