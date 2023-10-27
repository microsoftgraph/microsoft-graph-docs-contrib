---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const unifiedRoleManagementPolicyRule = {
    '@odata.type': '#microsoft.graph.unifiedRoleManagementPolicyExpirationRule',
    id: 'Expiration_EndUser_Assignment',
    isExpirationRequired: true,
    maximumDuration: 'PT1H45M',
    target: {
        '@odata.type': 'microsoft.graph.unifiedRoleManagementPolicyRuleTarget',
        caller: 'EndUser',
        operations: [
            'All'
        ],
        level: 'Assignment',
        inheritableSettings: [],
        enforcedSettings: []
    }
};

await client.api('/policies/roleManagementPolicies/DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67/rules/Expiration_EndUser_Assignment')
	.update(unifiedRoleManagementPolicyRule);

```