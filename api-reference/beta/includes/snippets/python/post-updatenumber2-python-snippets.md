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
	network_site_id = "fff21455-0f84-4a6b-babd-0a9b46971a62",
)

await graph_client.admin.teams.telephone_number_management.number_assignments.microsoft_graph_teams_administration_update_number.post(request_body)


```