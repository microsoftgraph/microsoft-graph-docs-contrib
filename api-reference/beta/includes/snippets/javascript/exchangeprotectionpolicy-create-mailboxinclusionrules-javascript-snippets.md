---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const mailboxProtectionRule = {
   mailboxExpression: '(memberOf -any (group.id -in [\'f218eb4a-ea72-42bd-8f0b-d0bbf794bec7\']))'
};

await client.api('/solutions/backupRestore/exchangeProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/mailboxInclusionRules')
	.version('beta')
	.post(mailboxProtectionRule);

```