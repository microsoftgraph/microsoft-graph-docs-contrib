---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const exchangeProtectionPolicy = {
  displayName: 'Exchange Protection Policy',
  mailboxProtectionUnits: [
    {
      directoryObjectId: 'cdd3a849-dcaf-4a85-af82-7e39fc14019a'
    },
    {
      directoryObjectId: '9bc069da-b746-41a4-89ab-26125c6373c7'
    },
    {
      directoryObjectId: 'b218eb4a-ea72-42bd-8f0b-d0bbf794bec7'
    }
  ]
};

await client.api('/solutions/backupRestore/exchangeProtectionPolicies')
	.post(exchangeProtectionPolicy);

```