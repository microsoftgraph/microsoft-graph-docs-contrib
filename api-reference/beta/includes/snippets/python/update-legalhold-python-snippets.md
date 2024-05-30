---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.legal_hold import LegalHold

graph_client = GraphServiceClient(credentials, scopes)

request_body = LegalHold(
	description = "This is a description for a legalHold",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').patch(request_body)


```