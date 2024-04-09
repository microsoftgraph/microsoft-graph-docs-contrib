---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.offerShiftRequests.offer_shift_requests_request_builder import OfferShiftRequestsRequestBuilder
from msgraph.generated.models.offer_shift_request import OfferShiftRequest

graph_client = GraphServiceClient(credentials, scopes)

request_body = OfferShiftRequest(
	sender_shift_id = "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29",
	sender_message = "Having a family emergency, could you take this shift for me?",
	recipient_user_id = "fe278b61-21ac-4872-8b41-1962bbb98e3c",
)

request_configuration = OfferShiftRequestsRequestBuilder.OfferShiftRequestsRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.offer_shift_requests.post(request_body, request_configuration = request_configuration)


```