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
    originId: 'Member_e93e24d1-2b65-4a6c-a1dd-654a12225487',
    displayName: 'Member',
    originSystem: 'AadGroup',
    accessPackageResource: {
      id: '4a1e21c5-8a76-4578-acb1-641160e076e8',resourceType: 'Security Group',  
      originId: 'e93e24d1-2b65-4a6c-a1dd-654a12225487',originSystem: 'AadGroup'
    }
  },
  accessPackageResourceScope: {
    originId: 'e93e24d1-2b65-4a6c-a1dd-654a12225487',originSystem: 'AadGroup'
  }
};

await client.api('/identityGovernance/entitlementManagement/accessPackages/88203d16-0e31-41d4-87b2-dd402f1435e9/accessPackageResourceRoleScopes')
	.version('beta')
	.post(accessPackageResourceRoleScope);

```