---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.schedule.offer_shift_requests.offer_shift_requests_request_builder import OfferShiftRequestsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph_beta.generated.models.offer_shift_request import OfferShiftRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OfferShiftRequest(
	sender_shift_id = "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29",
	sender_message = "Having a family emergency, could you take this shift for me?",
	recipient_user_id = "fe278b61-21ac-4872-8b41-1962bbb98e3c",
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {token}")


result = await graph_client.teams.by_team_id('team-id').schedule.offer_shift_requests.post(request_body, request_configuration = request_configuration)


```