---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.legal_hold import LegalHold
from msgraph_beta.generated.models.identity_set import IdentitySet
from msgraph_beta.generated.models.legal_hold_status import LegalHoldStatus

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