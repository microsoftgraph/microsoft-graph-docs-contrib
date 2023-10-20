---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = Agreement(
	display_name = "All Contoso volunteers - Terms of use",
	is_viewing_before_acceptance_required = True,
)

result = await graph_client.identity_governance.term_of_use.agreements.by_agreement_id('agreement-id').patch(body = request_body)


```