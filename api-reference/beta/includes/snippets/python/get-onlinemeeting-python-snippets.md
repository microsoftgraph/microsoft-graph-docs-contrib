---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.online_meetings.online_meetings_request_builder import OnlineMeetingsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetQueryParameters(
		filter = "VideoTeleconferenceId eq '123456789'",
)

request_configuration = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.online_meetings.get(request_configuration = request_configuration)


```