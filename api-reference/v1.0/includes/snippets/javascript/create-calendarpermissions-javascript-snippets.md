---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const calendarPermission = {
    emailAddress: {
        name: 'Samantha Booth',
        address: 'samanthab@contoso.com'
    },
    isInsideOrganization: true,
    isRemovable: true,
    role: 'read'
};

await client.api('/me/calendar/calendarPermissions')
	.post(calendarPermission);

```