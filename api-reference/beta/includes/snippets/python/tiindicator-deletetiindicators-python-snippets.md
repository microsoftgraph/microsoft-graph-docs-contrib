---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.tiindicators.delete_ti_indicators.delete_ti_indicators_post_request_body import DeleteTiIndicatorsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeleteTiIndicatorsPostRequestBody(
	value = [
		"id-value1",
		"id-value2",
	],
)

result = await graph_client.security.ti_indicators.delete_ti_indicators.post(request_body)


```