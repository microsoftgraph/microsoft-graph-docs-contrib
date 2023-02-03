---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const directorySetting = {
    templateId: '08d542b9-071f-4e16-94b0-74abb372e3d9',
    values: [
        {
            name: 'AllowToAddGuests',
            value: 'false'
        }
    ]
};

await client.api('/groups/05aa6a98-956a-45c0-b13b-88076a23f2cd/settings')
	.version('beta')
	.post(directorySetting);

```