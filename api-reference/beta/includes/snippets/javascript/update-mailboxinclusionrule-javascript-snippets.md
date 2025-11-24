---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxProtectionRule = {
  mailboxExpression: '(memberOf -any (group.id -in [\'c318eb4a-ea72-42bd-8f0b-d0bbf794bec7\']))'
};

await client.api('/solutions/backupRestore/exchangeProtectionPolicies/e267a763-ca81-4a98-8c1a-f407143cffe1/mailboxInclusionRules/c31adc5c-b65d-4a85-8eda-976947a24124')
	.version('beta')
	.update(mailboxProtectionRule);

```