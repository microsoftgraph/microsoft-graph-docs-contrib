---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.onlineMeetings.item.registration.registration_request_builder import RegistrationRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = RegistrationRequestBuilder.RegistrationRequestBuilderGetQueryParameters(
		expand = ["microsoft.graph.meetingRegistration/customQuestions"],
)

request_configuration = RegistrationRequestBuilder.RegistrationRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').registration.get(request_configuration = request_configuration)


```