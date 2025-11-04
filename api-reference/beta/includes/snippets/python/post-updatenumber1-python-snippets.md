---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.admin.teams.telephonenumbermanagement.numberassignments.microsoft_graph_teams_administration_update_number.update_number_post_request_body import UpdateNumberPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UpdateNumberPostRequestBody(
	telephone_number = "+12061234567",
	location_id = "93cb8a70-b4af-41df-9928-d07607e21776",
)

await graph_client.admin.teams.telephone_number_management.number_assignments.microsoft_graph_teams_administration_update_number.post(request_body)


```