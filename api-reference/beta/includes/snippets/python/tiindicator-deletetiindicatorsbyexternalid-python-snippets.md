---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.tiindicators.delete_ti_indicators_by_external_id.delete_ti_indicators_by_external_id_post_request_body import DeleteTiIndicatorsByExternalIdPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DeleteTiIndicatorsByExternalIdPostRequestBody(
	value = [
		"externalId-value1",
		"externalId-value2",
	],
)

result = await graph_client.security.ti_indicators.delete_ti_indicators_by_external_id.post(request_body)


```