---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assign = Content-type: application/json
Content-length: 312

{
  managedEBookAssignments: [
    {
      '@odata.type': '#microsoft.graph.managedEBookAssignment',
      id: 'ae8b0d27-0d27-ae8b-270d-8bae270d8bae',
      target: {
        '@odata.type': 'microsoft.graph.allLicensedUsersAssignmentTarget'
      },
      installIntent: 'required'
    }
  ]
};

await client.api('/deviceAppManagement/managedEBooks/{managedEBookId}/assign')
	.post(assign);

```