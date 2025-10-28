---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.engagement_role_member import EngagementRoleMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EngagementRoleMember(
	additional_data = {
			"user@odata_bind" : "https://graph.microsoft.com/beta/users('e8d9f6a2-1c34-4b7a-9f11-2a4d8b7c9e01')",
	}
)

result = await graph_client.employee_experience.roles.by_engagement_role_id('engagementRole-id').members.post(request_body)


```