---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extension = {
    '@odata.type':'microsoft.graph.openTypeExtension',
    extensionName: 'com.contoso.roamingSettings',
    theme: 'dark',
    color: 'purple',
    lang: 'Japanese'
};

await client.api('/me/extensions')
	.post(extension);

```