---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.delete_ti_indicators_post_request_body import DeleteTiIndicatorsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeleteTiIndicatorsPostRequestBody(
	value = [
		"id-value1",
		"id-value2",
	],
)

result = await graph_client.security.ti_indicators.delete_ti_indicators.post(request_body)


```