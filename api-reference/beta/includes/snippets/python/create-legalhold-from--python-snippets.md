---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.legal_hold import LegalHold
from msgraph.generated.models.identity_set import IdentitySet

graph_client = GraphServiceClient(credentials, scopes)

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
	],
	display_name = "String",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.post(request_body)


```