---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageAssignmentPolicy = {
    displayName: 'Sales department users',
    description: 'All users from sales department',
    allowedTargetScope: 'specificDirectoryUsers',
    specificAllowedTargets: [
        {
            '@odata.type': '#microsoft.graph.attributeRuleMembers',
            description: 'Membership rule for all users from sales department',
            membershipRule: '(user.department -eq \"Sales\")'
        }
    ],
    automaticRequestSettings: {
        requestAccessForAllowedTargets: true
    },
    accessPackage: {
        id: '8a36831e-1527-4b2b-aff2-81259a8d8e76'
    }
};

await client.api('/identityGovernance/entitlementManagement/assignmentPolicies')
	.post(accessPackageAssignmentPolicy);

```