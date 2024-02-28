---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const operation = {
  invoiceId: 'G016907411',
  attributeSet: 'full'
};

await client.api('/reports/partners/billing/reconciliation/billed/export')
	.version('beta')
	.post(operation);

```