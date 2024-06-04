---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.forwarding_options import ForwardingOptions
from msgraph_beta.generated.models.status import Status

graph_client = GraphServiceClient(credentials, scopes)

request_body = ForwardingOptions(
	skip_dns_lookup_state = Status.Disabled,
)

result = await graph_client.network_access.settings.forwarding_options.patch(request_body)


```