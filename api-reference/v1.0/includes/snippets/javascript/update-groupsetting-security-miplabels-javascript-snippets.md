---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
    values: [
        {
            name: 'EnableMIPLabels',
            value: 'true'
        }
    ]
};

await client.api('/groupSettings/{groupSettingId}')
	.update(groupSetting);

```