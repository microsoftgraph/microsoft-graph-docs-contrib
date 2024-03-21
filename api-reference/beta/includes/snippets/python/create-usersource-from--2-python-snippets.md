---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_source import UserSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSource(
	email = "adelev@contoso.com",
	included_sources = SourceType.Mailbox,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').legal_holds.by_legal_hold_id('legalHold-id').user_sources.post(request_body)


```