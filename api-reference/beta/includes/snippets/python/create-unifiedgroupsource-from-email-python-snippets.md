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
		mail = "SecretGroup@contoso.com",
	),
	included_sources = SourceType.Mailbox | SourceType.Site,
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').unified_group_sources.post(request_body)


```