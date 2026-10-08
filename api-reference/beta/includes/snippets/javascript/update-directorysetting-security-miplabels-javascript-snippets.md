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
            name: 'EnableMIPLabels',
            value: 'true'
        }
    ]
};

await client.api('/settings/{directorySettingId}')
	.version('beta')
	.update(directorySetting);

```