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
        address: 'samanthab@adatum.onmicrosoft.com'
    },
    isInsideOrganization: true,
    isRemovable: true,
    role: 'read'
};

await client.api('/me/calendar/calendarPermissions')
	.post(calendarPermission);

```