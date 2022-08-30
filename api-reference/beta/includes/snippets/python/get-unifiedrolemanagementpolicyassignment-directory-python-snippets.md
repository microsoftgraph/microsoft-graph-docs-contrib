---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.policies.role_management_policy_assignments.by_unified_role_management_policy_assignment_id('unifiedRoleManagementPolicyAssignment-id').get()


```