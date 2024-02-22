---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.swapShiftsChangeRequests.swap_shifts_change_requests_request_builder import SwapShiftsChangeRequestsRequestBuilder
from msgraph.generated.models.swap_shifts_change_request import SwapShiftsChangeRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = SwapShiftsChangeRequest(
	sender_shift_id = "5ad10161-6524-4c7c-9beb-4e8677ba2f6d",
	sender_message = "I can't make my shift, any chance we can swap?",
	recipient_user_id = "567c8ea5-9e32-422a-a663-8270201699cd",
	recipient_shift_id = "e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c",
)

request_configuration = SwapShiftsChangeRequestsRequestBuilder.SwapShiftsChangeRequestsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.swap_shifts_change_requests.post(request_body, request_configuration = request_configuration)


```