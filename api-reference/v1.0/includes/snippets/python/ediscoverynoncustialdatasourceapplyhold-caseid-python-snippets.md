---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyHoldPostRequestBody(
	ids = [
		"39333641443238353535383731453339",
		"46333131344239353834433430454335",
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').noncustodial_data_sources.microsoft_graph_security_apply_hold.post(request_body)


```