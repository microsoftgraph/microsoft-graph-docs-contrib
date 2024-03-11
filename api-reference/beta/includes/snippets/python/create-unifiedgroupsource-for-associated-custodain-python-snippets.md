---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_group_source import UnifiedGroupSource
from msgraph.generated.models.group import Group

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedGroupSource(
	group = Group(
		mail = "SOCTeam@contoso.com",
	),
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.by_ediscovery_custodian_id('ediscoveryCustodian-id').unified_group_sources.post(request_body)


```