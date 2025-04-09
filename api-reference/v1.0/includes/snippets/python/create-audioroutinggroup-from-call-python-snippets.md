---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.audio_routing_group import AudioRoutingGroup
from msgraph.generated.models.routing_mode import RoutingMode
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AudioRoutingGroup(
	id = "oneToOne",
	routing_mode = RoutingMode.OneToOne,
	sources = [
		"632899f8-2ea1-4604-8413-27bd2892079f",
	],
	receivers = [
		"550fae72-d251-43ec-868c-373732c2704f",
	],
)

result = await graph_client.communications.calls.by_call_id('call-id').audio_routing_groups.post(request_body)


```