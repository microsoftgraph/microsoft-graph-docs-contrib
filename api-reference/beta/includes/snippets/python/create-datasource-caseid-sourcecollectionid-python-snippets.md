---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user_source import UserSource

graph_client = GraphServiceClient(credentials, scopes)

request_body = UserSource(
	odata_type = "microsoft.graph.ediscovery.userSource",
	email = "badguy@contoso.com",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').source_collections.by_source_collection_id('sourceCollection-id').additional_sources.post(request_body)


```