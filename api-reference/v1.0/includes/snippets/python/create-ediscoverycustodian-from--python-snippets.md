---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EdiscoveryCustodian(
	email = "AdeleV@contoso.com",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.post(body = request_body)


```