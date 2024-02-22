---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.audio_routing_group import AudioRoutingGroup

graph_client = GraphServiceClient(credentials, scopes)

request_body = AudioRoutingGroup(
	id = "oneToOne",
	routing_mode = RoutingMode.OneToOne,
	sources = [
		"632899f8-2ea1-4604-8413-27bd2892079f",
	],
	receivers = [
		"550fae72-d251-43ec-868c-373732c2704f",
		"72f988bf-86f1-41af-91ab-2d7cd011db47",
	],
)

result = await graph_client.communications.calls.by_call_id('call-id').audio_routing_groups.by_audio_routing_group_id('audioRoutingGroup-id').patch(request_body)


```