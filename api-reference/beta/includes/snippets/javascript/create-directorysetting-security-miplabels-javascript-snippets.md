---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
    templateId: 'd209f6fa-3839-4d70-b83f-60b1c64d0e8f',
    values: [
        {
            name: 'EnableMIPLabels',
            value: 'true'
        }
    ]
};

await client.api('/settings')
	.version('beta')
	.post(directorySetting);

```