---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = TiIndicator(
	description = "description-updated",
)

result = await graph_client.security.ti_indicators.by_ti_indicator_id('tiIndicator-id').patch(request_body)


```