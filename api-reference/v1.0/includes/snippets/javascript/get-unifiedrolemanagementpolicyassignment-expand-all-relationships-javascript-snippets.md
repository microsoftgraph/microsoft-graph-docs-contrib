---
description: "Automatically generated file. DO NOT MODIFY"
ms.custom: sfi-ga-nochange
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let unifiedRoleManagementPolicyAssignment = await client.api('/policies/roleManagementPolicyAssignments/Directory_cab01047-8ad9-4792-8e42-569340767f1b_70c808b5-0d35-4863-a0ba-07888e99d448_62e90394-69f5-4237-9190-012177145e10')
	.expand('policy($expand=rules)')
	.get();

```