---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let numberAssignments = await client.api('/admin/teams/telephoneNumberManagement/numberAssignments')
	.version('beta')
	.filter('assignmentStatus eq \'unassigned\' and capabilities/any(c:c eq \'userAssignment\')')
	.get();

```