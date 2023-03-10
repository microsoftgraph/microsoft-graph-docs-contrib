---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const delegatedAdminRelationship = {
  displayName: 'Contoso admin relationship',
  duration: 'P730D',
  customer: {
    tenantId: '4b827261-d21f-4aa9-b7db-7fa1f56fb163',
    displayName: 'Contoso subsidiary Inc'
  },
  accessDetails: {
    unifiedRoles: [
      {
        roleDefinitionId: '29232cdf-9323-42fd-ade2-1d097af3e4de'
      },
      {
        roleDefinitionId: '3a2c62db-5318-420d-8d74-23affee5d9d5'
      }
    ]
  }
};

await client.api('/tenantRelationships/delegatedAdminRelationships')
	.post(delegatedAdminRelationship);

```