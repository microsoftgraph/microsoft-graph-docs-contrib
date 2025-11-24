---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = {
  value: [
    {
      '@odata.type': '#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment',
      userId: '5c802b19-3600-83f1-1767-7b9edc7f38ab',
      policyType: 'TeamsMeetingPolicy',
      policyId: 'VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo'
    }
  ]
};

await client.api('/admin/teams/policy/userAssignments/assign')
	.version('beta')
	.post(assign);

```