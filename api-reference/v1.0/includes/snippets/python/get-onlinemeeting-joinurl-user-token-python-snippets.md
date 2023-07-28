---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetQueryParameters(
		filter = "JoinWebUrl eq 'https://teams.microsoft.com/l/meetup-join/19:meeting_MGQ4MDQyNTEtNTQ2NS00YjQxLTlkM2EtZWVkODYxODYzMmY2@thread.v2/0?context={\"Tid\":\"909c6581-5130-43e9-88f3-fcb3582cde37\",\"Oid\":\"dc17674c-81d9-4adb-bfb2-8f6a442e4622\"}'",
)

request_configuration = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.online_meetings.get(request_configuration = request_configuration)


```