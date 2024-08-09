---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveProtectionRule = {
    driveExpression: '(memberOf -any (group.id -in [\'c318eb4a-ea72-42bd-8f0b-d0bbf794bec7\']))'
};

await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/driveInclusionRules')
	.version('beta')
	.post(driveProtectionRule);

```