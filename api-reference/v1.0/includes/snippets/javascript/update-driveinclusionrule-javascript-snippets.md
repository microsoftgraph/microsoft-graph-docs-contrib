---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const driveProtectionRule = {
  driveExpression: '(memberOf -any (group.id -in [\'4e8e9b15-bfc8-40a2-aed0-3f65a22e2bd4\']))'
};

await client.api('/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/e267a763-ca81-4a98-8c1a-f407143cffe1/driveInclusionRules/c31adc5c-b65d-4a85-8eda-976947a24124')
	.update(driveProtectionRule);

```