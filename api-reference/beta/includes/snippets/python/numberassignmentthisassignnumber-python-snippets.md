---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.telephonenumbermanagement.numberassignments.microsoft_graph_teams_administration_assign_number.assign_number_post_request_body import AssignNumberPostRequestBody
from msgraph_beta.generated.models.number_type import NumberType
from msgraph_beta.generated.models.assignment_category import AssignmentCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignNumberPostRequestBody(
	telephone_number = "12061234567",
	assignment_target_id = "94ec379d-30a2-4cdb-a377-75e42f7a61e5",
	number_type = NumberType.DirectRouting,
	assignment_category = AssignmentCategory.Primary,
)

await graph_client.admin.teams.telephone_number_management.number_assignments.microsoft_graph_teams_administration_assign_number.post(request_body)


```