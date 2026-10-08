---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.environment import Environment
from msgraph_beta.generated.models.environment_kind import EnvironmentKind
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Environment(
	kind = EnvironmentKind.AzureSubscription,
	id = "/subscriptions/d34fd44c-ebfa-4a9c-bceb-9eeafe72ac15",
)

result = await graph_client.security.zones.by_zone_id('zone-id').environments.post(request_body)


```