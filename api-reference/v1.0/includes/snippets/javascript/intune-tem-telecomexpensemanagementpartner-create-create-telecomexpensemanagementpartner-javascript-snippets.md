---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const telecomExpenseManagementPartner = {
  '@odata.type': '#microsoft.graph.telecomExpenseManagementPartner',
  displayName: 'Display Name value',
  url: 'Url value',
  appAuthorized: true,
  enabled: true,
  lastConnectionDateTime: '2016-12-31T23:58:36.6670033-08:00'
};

await client.api('/deviceManagement/telecomExpenseManagementPartners')
	.post(telecomExpenseManagementPartner);

```