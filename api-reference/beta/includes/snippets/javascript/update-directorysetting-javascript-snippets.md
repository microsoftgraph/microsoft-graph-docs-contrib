---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
    values: [
        {
            name: 'CustomBlockedWordsList',
            value: 'Contoso'
        }
    ]
};

await client.api('/settings/3c105fc3-2254-4861-9e2d-d59e2126f3ef')
	.version('beta')
	.update(directorySetting);

```