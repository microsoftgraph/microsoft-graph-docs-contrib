---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const siteProtectionRule = {
    siteExpression: '((displayName -contains \'Finance\')  -or  (displayName -contains \'Legal\'))'
};

await client.api('/solutions/backupRestore/sharePointProtectionPolicies/71633878-8321-4950-bfaf-ed285bdd1461/siteInclusionRules')
	.version('beta')
	.post(siteProtectionRule);

```