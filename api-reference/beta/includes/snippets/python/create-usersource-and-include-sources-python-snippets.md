---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.user_source import UserSource
from msgraph_beta.generated.models.source_type import SourceType

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSource(
	email = "admin@contoso.com",
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').legal_holds.by_ediscovery_hold_policy_id('ediscoveryHoldPolicy-id').user_sources.post(request_body)


```