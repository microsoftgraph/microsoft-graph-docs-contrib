---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
    emailAddresses: [
        {
            type: 'personal',
            name: 'Pavel Bansky',
            address: 'pavelb@contoso.com'
        },
        {
          address: 'pavelb@contoso.com',
          name: 'Pavel Bansky',
          type: 'other',
          otherLabel: 'Volunteer work'
        }
    ]
};

await client.api('/me/contacts/AAMkADh6v5AAAvgTCEAAA=')
	.version('beta')
	.update(contact);

```