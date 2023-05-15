---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const delegatedAdminAccessAssignment = {
  accessContainer: {
    accessContainerId: '869713c9-0b28-4d08-8949-ae07ae1bf528',
    accessContainerType: 'securityGroup'
  },
  accessDetails: {
    unifiedRoles: [
      {
        roleDefinitionId: '29232cdf-9323-42fd-ade2-1d097af3e4de'
      },
      {
        roleDefinitionId: 'f2ef992c-3afb-46b9-b7cf-a126ee74c451'
      },
      {
        roleDefinitionId: '729827e3-9c14-49f7-bb1b-9608f156bbb8'
      },
      {
        roleDefinitionId: '3a2c62db-5318-420d-8d74-23affee5d9d5'
      }
    ]
  }
};

await client.api('/tenantRelationships/delegatedAdminRelationships/72a7ae7e-4887-4e34-9755-2e1e9b26b943-63f017cb-9e0d-4f14-94bd-4871902b3409/accessAssignments')
	.post(delegatedAdminAccessAssignment);

```