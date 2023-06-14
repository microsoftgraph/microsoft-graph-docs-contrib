---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeleteTiIndicatorsByExternalIdPostRequestBody()
request_body.Value(['externalId-value1', 'externalId-value2', ])




result = await client.security.ti_indicators.delete_ti_indicator_by_external_id.post(request_body = request_body)


```