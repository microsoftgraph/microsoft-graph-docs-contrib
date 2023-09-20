---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TiIndicator(
	additional_information = "additionalInformation-after-update",
	confidence = 42,
	description = "description-after-update",
)

request_configuration = TiIndicatorRequestBuilder.TiIndicatorRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
}

)

result = await graph_client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(body = request_body, request_configuration = request_configuration)


```