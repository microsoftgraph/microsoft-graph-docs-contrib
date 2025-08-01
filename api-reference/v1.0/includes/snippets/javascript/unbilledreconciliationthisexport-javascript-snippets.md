---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const operation = {
  attributeSet: 'full',
  billingPeriod: 'current',
  currencyCode: 'USD'
};

await client.api('/reports/partners/billing/reconciliation/unbilled/export')
	.post(operation);

```