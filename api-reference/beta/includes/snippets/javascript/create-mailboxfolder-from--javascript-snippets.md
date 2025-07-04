---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxFolder = {
  displayName: 'Announcements',
  type: 'IPF.Note',
  singleValueExtendedProperties: [
        {
            id: 'String 0x3001',
            value: 'Announcements'
        }
    ]
};

await client.api('/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders')
	.version('beta')
	.post(mailboxFolder);

```