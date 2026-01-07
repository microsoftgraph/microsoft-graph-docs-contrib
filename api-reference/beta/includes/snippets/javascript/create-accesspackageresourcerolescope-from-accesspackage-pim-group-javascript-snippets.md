---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const accessPackageResourceRoleScope = {
  accessPackageResourceRole: {
    originId: 'EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18',
    displayName: 'Eligible Member',
    originSystem: 'AadGroup',
    accessPackageResource: {id: 'b86a1828-3171-409e-8343-32a224f324a0',resourceType: 'O365 Group',originId: 'bcfae74a-91a6-46e9-99bf-89d6487cc3f3',originSystem: 'AadGroup'}
  },
 accessPackageResourceScope: {
   originId: 'bcfae74a-91a6-46e9-99bf-89d6487cc3f3',originSystem: 'AadGroup'
 }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/b86a1828-3171-409e-8343-32a224f324a0/accessPackageResourceRoleScopes')
	.version('beta')
	.post(accessPackageResourceRoleScope);

```