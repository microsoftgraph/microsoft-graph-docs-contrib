---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.forwarding_options import ForwardingOptions
from msgraph_beta.generated.models.status import Status
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ForwardingOptions(
	skip_dns_lookup_state = Status.Disabled,
)

result = await graph_client.network_access.settings.forwarding_options.patch(request_body)


```