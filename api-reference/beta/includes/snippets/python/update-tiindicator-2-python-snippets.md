---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.tiIndicators.item.ti_indicator_item_request_builder import TiIndicatorItemRequestBuilder
from msgraph.generated.models.ti_indicator import TiIndicator

graph_client = GraphServiceClient(credentials, scopes)

request_body = TiIndicator(
	additional_information = "additionalInformation-after-update",
	confidence = 42,
	description = "description-after-update",
)

request_configuration = TiIndicatorItemRequestBuilder.TiIndicatorItemRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")


result = await graph_client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(request_body, request_configuration = request_configuration)


```