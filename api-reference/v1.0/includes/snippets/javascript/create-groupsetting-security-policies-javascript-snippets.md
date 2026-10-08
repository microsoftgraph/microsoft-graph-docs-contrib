---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
    templateId: '7e0abea2-5c20-405f-9658-bfc9a523fd49',
    values: [
        {
            name: 'AllowToAddGuests',
            value: 'false'
        }
    ]
};

await client.api('/groups/{securityGroupId}/settings')
	.post(groupSetting);

```