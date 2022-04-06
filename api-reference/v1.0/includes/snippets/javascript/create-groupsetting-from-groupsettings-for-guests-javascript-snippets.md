---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
    templateId: '08d542b9-071f-4e16-94b0-74abb372e3d9',
    values: [
        {
            name: 'AllowToAddGuests',
            value: 'false'
        }
    ]
};

await client.api('/groups/055a5d18-a3a9-4338-b9c5-de92559b7ebf/settings')
	.post(groupSetting);

```