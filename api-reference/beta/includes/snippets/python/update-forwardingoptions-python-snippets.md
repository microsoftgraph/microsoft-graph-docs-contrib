---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardingOptions(
	skip_dns_lookup_state = Status.Disabled,
)

result = await graph_client.network_access.settings.forwarding_options.patch(request_body)


```