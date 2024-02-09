---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unified_group_source import UnifiedGroupSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnifiedGroupSource(
	included_sources = SourceType.Mailbox,
	additional_data = {
			"group@odata_bind" : "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610",
	}
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.by_ediscovery_custodian_id('ediscoveryCustodian-id').unified_group_sources.post(request_body)


```