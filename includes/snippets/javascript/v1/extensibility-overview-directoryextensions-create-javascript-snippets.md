---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const extensionProperty = {
    name: 'jobGroupTracker',
    dataType: 'String',
    targetObjects: [
        'User'
    ]
};

await client.api('/applications/30a5435a-1871-485c-8c7b-65f69e287e7b/extensionProperties')
	.post(extensionProperty);

```