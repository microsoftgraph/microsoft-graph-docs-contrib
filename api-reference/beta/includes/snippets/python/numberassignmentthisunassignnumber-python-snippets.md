---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.telephonenumbermanagement.numberassignments.microsoft_graph_teams_administration_unassign_number.unassign_number_post_request_body import UnassignNumberPostRequestBody
from msgraph_beta.generated.models.number_type import NumberType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnassignNumberPostRequestBody(
	telephone_number = "12061234567",
	number_type = NumberType.DirectRouting,
)

await graph_client.admin.teams.telephone_number_management.number_assignments.microsoft_graph_teams_administration_unassign_number.post(request_body)


```