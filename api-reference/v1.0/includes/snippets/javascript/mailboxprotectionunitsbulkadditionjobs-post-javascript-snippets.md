---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxProtectionUnitsBulkAdditionJob = {
    displayName: 'mailboxes-I',
    mailboxes: ['amala@contoso.com', 'conrad@contoso.com', 'lothar@contoso.com'],
    directoryObjectIds: ['1fec4e78-bce4-4aaf-ab1b-5451cc387264']
};

await client.api('/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxProtectionUnitsBulkAdditionJobs')
	.post(mailboxProtectionUnitsBulkAdditionJob);

```