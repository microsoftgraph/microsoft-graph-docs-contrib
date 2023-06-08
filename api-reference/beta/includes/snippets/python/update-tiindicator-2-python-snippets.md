---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TiIndicator()
request_body.additional_information = 'additionalInformation-after-update'

request_body.Confidence = 42

request_body.description = 'description-after-update'



request_configuration = TiIndicatorRequestBuilder.TiIndicatorRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
}

)


result = await client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(request_body = request_body, request_configuration = request_configuration)


```