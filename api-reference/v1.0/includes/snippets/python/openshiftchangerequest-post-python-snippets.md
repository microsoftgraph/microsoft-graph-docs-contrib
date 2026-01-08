---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.open_shift_change_requests.open_shift_change_requests_request_builder import OpenShiftChangeRequestsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.open_shift_change_request import OpenShiftChangeRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenShiftChangeRequest(
	sender_user_id = "3fe0bc21-1398-4fd9-9713-52511b434c1e",
	sender_message = "Can I take this shift?",
	open_shift_id = "577b75d2-a927-48c0-a5d1-dc984894e7b8",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.open_shift_change_requests.post(request_body, request_configuration = request_configuration)


```