---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.swap_shifts_change_requests.swap_shifts_change_requests_request_builder import SwapShiftsChangeRequestsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.swap_shifts_change_request import SwapShiftsChangeRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SwapShiftsChangeRequest(
	sender_shift_id = "5ad10161-6524-4c7c-9beb-4e8677ba2f6d",
	sender_message = "I can't make my shift, any chance we can swap?",
	recipient_user_id = "567c8ea5-9e32-422a-a663-8270201699cd",
	recipient_shift_id = "e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.swap_shifts_change_requests.post(request_body, request_configuration = request_configuration)


```