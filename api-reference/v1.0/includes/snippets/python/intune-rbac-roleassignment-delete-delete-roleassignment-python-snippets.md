---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_management.role_definitions.by_role_definition_id('roleDefinition-id').role_assignments.by_role_assignment_id('roleAssignment-id').delete()


```