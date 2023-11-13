---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Custodian(
	email = "AdeleV@contoso.com",
	apply_hold_to_sources = True,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.post(request_body)


```