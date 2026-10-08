---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignNumber = {
  telephoneNumber: '12061234567',
  assignmentTargetId: '94ec379d-30a2-4cdb-a377-75e42f7a61e5',
  numberType: 'directRouting',
  assignmentCategory: 'primary'
};

await client.api('/admin/teams/telephoneNumberManagement/numberAssignments/assignNumber')
	.version('beta')
	.post(assignNumber);

```