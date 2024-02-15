---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_source import UserSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSource(
	email = "admin@contoso.com",
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.by_ediscovery_custodian_id('ediscoveryCustodian-id').user_sources.post(request_body)


```