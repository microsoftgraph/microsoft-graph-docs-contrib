---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = LegalHold(
	odata_type = "#microsoft.graph.ediscovery.legalHold",
	description = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	is_enabled = Boolean,
	status = LegalHoldStatus.Pending,
	content_query = "String",
	errors = [
		"String",
	]
	display_name = "String",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.post(body = request_body)


```