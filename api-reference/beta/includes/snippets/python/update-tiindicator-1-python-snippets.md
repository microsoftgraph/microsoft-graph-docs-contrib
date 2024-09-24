---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ti_indicator import TiIndicator
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TiIndicator(
	description = "description-updated",
)

result = await graph_client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(request_body)


```