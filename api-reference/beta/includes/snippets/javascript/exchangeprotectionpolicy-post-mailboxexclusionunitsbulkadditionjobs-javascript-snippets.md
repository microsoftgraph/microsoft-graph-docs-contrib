---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxExclusionUnitsBulkAdditionJob = {
  displayName: 'Bulk exclude contractor mailboxes',
  mailboxes: [
    'contractor1@contoso.com',
    'contractor2@contoso.com',
    'contractor3@contoso.com'
  ]
};

await client.api('/solutions/backupRestore/exchangeProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/mailboxExclusionUnitsBulkAdditionJobs')
	.version('beta')
	.post(mailboxExclusionUnitsBulkAdditionJob);

```