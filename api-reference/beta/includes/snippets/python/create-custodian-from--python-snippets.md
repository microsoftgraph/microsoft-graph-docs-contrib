---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Custodian(
	email = "AdeleV@contoso.com",
	apply_hold_to_sources = True,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.post(body = request_body)


```