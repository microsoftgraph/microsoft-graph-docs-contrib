---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.delete_ti_indicators_by_external_id_post_request_body import DeleteTiIndicatorsByExternalIdPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeleteTiIndicatorsByExternalIdPostRequestBody(
	value = [
		"externalId-value1",
		"externalId-value2",
	],
)

result = await graph_client.security.ti_indicators.delete_ti_indicators_by_external_id.post(request_body)


```