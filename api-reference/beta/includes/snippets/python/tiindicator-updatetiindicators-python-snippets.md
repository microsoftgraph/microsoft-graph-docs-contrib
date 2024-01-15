---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UpdateTiIndicatorsPostRequestBody(
	value = [
		TiIndicator(
			id = "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
			additional_information = "mytest",
		),
		TiIndicator(
			id = "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
			additional_information = "test again",
		),
	],
)

result = await graph_client.security.ti_indicators.update_ti_indicators.post(request_body)


```