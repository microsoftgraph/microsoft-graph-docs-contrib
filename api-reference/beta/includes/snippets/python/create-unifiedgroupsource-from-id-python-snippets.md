---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_group_source import UnifiedGroupSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedGroupSource(
	included_sources = SourceType.Mailbox | SourceType.Site,
	additional_data = {
			"group@odata_bind" : "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84",
	}
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').custodians.by_custodian_id('custodian-id').unified_group_sources.post(request_body)


```