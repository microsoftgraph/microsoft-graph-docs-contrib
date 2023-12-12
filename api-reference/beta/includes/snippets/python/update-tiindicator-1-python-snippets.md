---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TiIndicator(
	description = "description-updated",
)

result = await graph_client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(request_body)


```