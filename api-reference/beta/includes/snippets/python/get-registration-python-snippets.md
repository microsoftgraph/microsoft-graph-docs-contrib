---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.online_meetings.item.registration.registration_request_builder import RegistrationRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = RegistrationRequestBuilder.RegistrationRequestBuilderGetQueryParameters(
		expand = ["microsoft.graph.meetingRegistration/customQuestions"],
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.get(request_configuration = request_configuration)


```