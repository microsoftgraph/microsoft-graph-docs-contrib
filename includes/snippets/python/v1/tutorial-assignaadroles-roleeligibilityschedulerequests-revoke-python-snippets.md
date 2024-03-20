---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_role_eligibility_schedule_request import UnifiedRoleEligibilityScheduleRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedRoleEligibilityScheduleRequest(
	action = UnifiedRoleScheduleRequestActions.AdminRemove,
	principal_id = "e77cbb23-0ff2-4e18-819c-690f58269752",
	role_definition_id = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	directory_scope_id = "/",
)

result = await graph_client.role_management.directory.role_eligibility_schedule_requests.post(request_body)


```