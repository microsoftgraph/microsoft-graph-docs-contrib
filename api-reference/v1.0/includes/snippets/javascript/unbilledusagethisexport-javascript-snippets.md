---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const operation = {
  currencyCode: 'USD',
  attributeSet: 'full',
  billingPeriod: 'current'
};

await client.api('/reports/partners/billing/usage/unbilled/export')
	.post(operation);

```